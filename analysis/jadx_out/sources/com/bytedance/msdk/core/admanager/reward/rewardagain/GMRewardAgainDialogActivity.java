package com.bytedance.msdk.core.admanager.reward.rewardagain;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.adhost.R;

/* loaded from: classes.dex */
public class GMRewardAgainDialogActivity extends Activity {
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.reward_again_dialog);
        ImageView imageView = (ImageView) findViewById(R.id.ra_pic);
        TextView textView = (TextView) findViewById(R.id.ra_title);
        TextView textView2 = (TextView) findViewById(R.id.ra_btn_ok);
        TextView textView3 = (TextView) findViewById(R.id.ra_btn_cancel);
        d dVar = ox.ox().dq;
        if (dVar != null) {
            textView.setText(dVar.d());
            textView2.setText(dVar.p());
            textView3.setText(dVar.s());
            if (!TextUtils.isEmpty(dVar.ox())) {
                new com.bytedance.msdk.dq.s.d(imageView).dq((Object[]) new String[]{dVar.ox()});
            }
        }
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.msdk.core.admanager.reward.rewardagain.GMRewardAgainDialogActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GMRewardAgainDialogActivity.this.finish();
                Runnable runnable = ox.ox().f841d;
                if (runnable != null) {
                    runnable.run();
                }
            }
        });
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.msdk.core.admanager.reward.rewardagain.GMRewardAgainDialogActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GMRewardAgainDialogActivity.this.finish();
                Runnable runnable = ox.ox().ox;
                if (runnable != null) {
                    runnable.run();
                }
            }
        });
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }
}
