<?php namespace App\Http\Controllers;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
class HomeController extends Controller {

	/*
	|--------------------------------------------------------------------------
	| Home Controller
	|--------------------------------------------------------------------------
	|
	| This controller renders your application's "dashboard" for users that
	| are authenticated. Of course, you are free to change or remove the
	| controller as you wish. It is just here to get your app started!
	|
	*/

	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct()
	{
		$this->middleware('auth');
	}

	/**
	 * Show the application dashboard to the user.
	 *
	 * @return Response
	 */
	public function index()
	{
		//get the active songs by fetching in database/

		$get_all_songs = DB::select('SELECT songlist_id,title,artist,lyrics,when_created,songlist_status FROM bookmaster.song_list WHERE songlist_status = ?',['Active']);
		return view('home')->with('active_songs',$get_all_songs);
	}

	public function add_song(Request $request) {
		$song_title = $request->get('song_title');
		$song_artist = $request->get('song_artist');
		$song_lyrics = $request->get('song_lyrics');

		DB::insert('INSERT INTO song_list (title,artist,lyrics,when_created)  VALUES (?,?,?,now()) ',[
			$song_title,
			$song_artist,
			$song_lyrics
		]);

		return response()->json('Success Inserted');
	}

	public function deactivate_song(Request $request) {

		$song_id = $request->get('song_id');

		DB::delete('UPDATE song_list SET songlist_status = ? WHERE songlist_id = ?',['Not Active',$song_id]);
		return response()->json('Success Deactivate');
	}


	public function get_edit_song(Request $request) {
		$song_id = $request->get('song_id');
		$get_all_songs = DB::select('SELECT songlist_id,title,artist,lyrics,when_created,songlist_status FROM bookmaster.song_list WHERE songlist_id = ?',[$song_id]);
		return response()->json($get_all_songs);
	}


	public function update_song(Request $request) {

		$song_id = $request->get('song_id');
		$edit_song_title = $request->get('edit_song_title');
		$edit_song_artist = $request->get('edit_song_artist');
		$edit_song_lyrics = $request->get('edit_song_lyrics');

		DB::update('UPDATE song_list SET title = ?, artist = ?, lyrics = ?, when_updated = now() WHERE songlist_id = ? ',[
			$edit_song_title,
			$edit_song_artist,
			$edit_song_lyrics,
			$song_id
		]);

		return response()->json('Success Update');
	}
}
