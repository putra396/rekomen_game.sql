package com.yusup.multi_page;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;

public class Profil extends Activity {

	void tampilkanData() {
		// Mengisi textview pada profil =================================
		TextView lblnama = (TextView) findViewById(R.id.namaku);
		lblnama.setText(Data_profilku.nama);

		TextView lbljmlapp = (TextView) findViewById(R.id.jmlapp);
		lbljmlapp.setText(String.valueOf(Data_profilku.jml_aplikasi));

		TextView lbljmlfollowers = (TextView) findViewById(R.id.jmlfollowers);
		lbljmlfollowers.setText(String.valueOf(Data_profilku.jml_followers));

		TextView lbljmlfollowing = (TextView) findViewById(R.id.jmlfollowing);
		lbljmlfollowing.setText(String.valueOf(Data_profilku.jml_following));

		TextView textView1 = (TextView) findViewById(R.id.textView1);
		textView1.setText("Tentang Diriku" + Data_profilku.nama);

		TextView lblketerangan = (TextView) findViewById(R.id.keterangan);
		lblketerangan.setText(Data_profilku.keterangan);
		// ==============================================================
	}

	@Override
	protected void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
		tampilkanData();
	}

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_profil);

		tampilkanData();
		
		ImageButton btnback = (ImageButton) findViewById(R.id.btnback);
		btnback.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View arg0) {
				// TODO Auto-generated method stub
				finish();
			}
		});
		Button btnlogout = (Button) findViewById(R.id.btnlogout);
		btnlogout.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View arg0) {
				Intent i = new Intent(getApplicationContext(), Login.class);
				startActivity(i);
				finish();
				// TODO Auto-generated method stub

			}
		});
		ImageButton btnedit = (ImageButton) findViewById(R.id.btnedit);
		btnedit.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View arg0) {
				// TODO Auto-generated method stub
				Intent i = new Intent(getApplicationContext(), Edit.class);
				startActivity(i);
			}
		});
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.profil, menu);
		return true;
	}

}
