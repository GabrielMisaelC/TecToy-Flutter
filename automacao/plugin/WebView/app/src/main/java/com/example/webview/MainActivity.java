package com.example.webview;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        final ProgressBar progressBar = findViewById(R.id.progress);
        progressBar.setVisibility(View.VISIBLE);


        WebView myWebView = (WebView) findViewById(R.id.webview);
       // myWebView.setWebViewClient(new HostsWebClient());
       // myWebView.getSettings().setPluginState(WebSettings.PluginState.ON);
       // myWebView.getSettings().setJavaScriptEnabled(true);
        //myWebView.getSettings().setJavaScriptCanOpenWindowsAutomatically(false);
       // myWebView.getSettings().setPluginsEnabled(true);
       // myWebView.getSettings().setSupportMultipleWindows(false);
       // myWebView.getSettings().setSupportZoom(false);
       // myWebView.setVerticalScrollBarEnabled(false);
       // myWebView.setHorizontalScrollBarEnabled(false);
        myWebView.loadUrl("http://www.karinanegociosimobiliarios.com.br/");
    }
}