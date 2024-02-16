package com.yusup.multi_page;

import android.os.Bundle;
import android.provider.ContactsContract.Profile;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.Toast;

public class Edit extends Activity {
	EditText editinputnama,editinputaplikasi,editinputfollowers,editinputfollowing,editinputketerangan;
	
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_edit_page);
		editinputnama=(EditText)findViewById(R.id.inputnama);
		editinputaplikasi=(EditText)findViewById(R.id.inputaplikasi);
		editinputfollowers=(EditText)findViewById(R.id.inputfollowers);
		editinputfollowing=(EditText)findViewById(R.id.inputfollowing);
		editinputketerangan=(EditText)findViewById(R.id.inputketerangan);
		
		editinputnama.setText(Data_profilku.nama);
		editinputaplikasi.setText(String.valueOf(Data_profilku.jml_aplikasi));
		editinputfollowers.setText(String.valueOf(Data_profilku.jml_followers));
		editinputfollowing.setText(String.valueOf(Data_profilku.jml_following));
		editinputketerangan.setText(Data_profilku.keterangan);

		
		ImageButton btnback=(ImageButton)findViewById(R.id.btnback);
		btnback.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View arg0) {
				// TODO Auto-generated method stub
				finish();
			}
		});
		
		Button btnsave=(Button)findViewById(R.id.btnsave);
		btnsave.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View arg0) {
				// TODO Auto-generated method stub
				Data_profilku.nama= editinputnama.getText().toString();
				Data_profilku.jml_aplikasi = Integer.parseInt(editinputaplikasi.getText().toString());
				Data_profilku.jml_followers = Integer.parseInt(editinputfollowers.getText().toString());
				Data_profilku.jml_following = Integer.parseInt(editinputfollowing.getText().toString());
				Data_profilku.keterangan = editinputketerangan.getText().toString();
				Toast.makeText(getApplicationContext(), "Data Berhasil Disimpan", Toast.LENGTH_SHORT).show();
				finish();
			}
		});
		
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.edit, menu);
		return true;
	}

}
