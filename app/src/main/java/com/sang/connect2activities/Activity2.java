package com.sang.connect2activities;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

// This class implements the second screen
public class Activity2 extends AppCompatActivity {
    public static int return21 = 21; // Request code

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.layout_activity2);

        Intent intent = getIntent();
        String dataFromActivity1 = intent.getStringExtra("dataFromActivity1");

        EditText editText = findViewById(R.id.edittext1);
        editText.setText(dataFromActivity1);

        Button button = findViewById(R.id.button2);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Intent intent2_1 = new Intent();
                String s = editText.getText().toString();
                intent2_1.putExtra("dataFromActivity2", s);
                setResult(return21, intent2_1);
                finish();
            }
        });
    }
}
