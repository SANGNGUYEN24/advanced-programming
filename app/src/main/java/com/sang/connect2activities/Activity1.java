package com.sang.connect2activities;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
// This class implements the first screen
public class Activity1 extends AppCompatActivity {
    TextView textView;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.layout_activity1);

        textView = findViewById(R.id.textView1);
        Button button = findViewById(R.id.button1);
        String s = textView.getText().toString();

        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent();
                intent.setClass(Activity1.this, Activity2.class);
                String s = textView.getText().toString();
                intent.putExtra("dataFromActivity1", s);
                // Go to the second screen
                startActivityForResult(intent, Activity2.return21);
            }
        });
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (requestCode == Activity2.return21) {
            String s = data.getStringExtra("dataFromActivity2");
            textView.setText(s);
        }
    }
}
