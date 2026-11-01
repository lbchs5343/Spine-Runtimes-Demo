package com.ss.android.socialbase.appdownloader.view;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.socialbase.appdownloader.d;
import com.ss.android.socialbase.appdownloader.ia;
import com.ss.android.socialbase.appdownloader.kk;
import com.ss.android.socialbase.appdownloader.ox.ig;
import com.ss.android.socialbase.appdownloader.ox.no;
import com.ss.android.socialbase.appdownloader.ox.ox;
import com.ss.android.socialbase.appdownloader.p;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class JumpUnknownSourceActivity extends Activity {

    /* renamed from: d, reason: collision with root package name */
    private Intent f9309d;
    private no dq;
    private Intent ox;
    private int p;
    private JSONObject s;

    private void d() {
        if (this.dq != null || this.f9309d == null) {
            return;
        }
        try {
            ox dq = p.o().dq();
            ig dq2 = dq != null ? dq.dq(this) : null;
            if (dq2 == null) {
                dq2 = new com.ss.android.socialbase.appdownloader.p.dq(this);
            }
            int dq3 = kk.dq(this, "tt_appdownloader_tip");
            int dq4 = kk.dq(this, "tt_appdownloader_label_ok");
            int dq5 = kk.dq(this, "tt_appdownloader_label_cancel");
            String optString = this.s.optString("jump_unknown_source_tips");
            if (TextUtils.isEmpty(optString)) {
                optString = getString(kk.dq(this, "tt_appdownloader_jump_unknown_source_tips"));
            }
            dq2.dq(dq3).dq(optString).dq(dq4, new DialogInterface.OnClickListener() { // from class: com.ss.android.socialbase.appdownloader.view.JumpUnknownSourceActivity.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    JumpUnknownSourceActivity jumpUnknownSourceActivity = JumpUnknownSourceActivity.this;
                    if (d.dq(jumpUnknownSourceActivity, jumpUnknownSourceActivity.ox, JumpUnknownSourceActivity.this.p, JumpUnknownSourceActivity.this.s)) {
                        d.ox(JumpUnknownSourceActivity.this.p, JumpUnknownSourceActivity.this.s);
                    } else {
                        JumpUnknownSourceActivity jumpUnknownSourceActivity2 = JumpUnknownSourceActivity.this;
                        d.dq((Context) jumpUnknownSourceActivity2, jumpUnknownSourceActivity2.ox, true);
                    }
                    d.dq(JumpUnknownSourceActivity.this.p, JumpUnknownSourceActivity.this.s);
                    JumpUnknownSourceActivity.this.finish();
                }
            }).d(dq5, new DialogInterface.OnClickListener() { // from class: com.ss.android.socialbase.appdownloader.view.JumpUnknownSourceActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (JumpUnknownSourceActivity.this.ox != null) {
                        JumpUnknownSourceActivity jumpUnknownSourceActivity = JumpUnknownSourceActivity.this;
                        d.dq((Context) jumpUnknownSourceActivity, jumpUnknownSourceActivity.ox, true);
                    }
                    d.d(JumpUnknownSourceActivity.this.p, JumpUnknownSourceActivity.this.s);
                    JumpUnknownSourceActivity.this.finish();
                }
            }).dq(new DialogInterface.OnCancelListener() { // from class: com.ss.android.socialbase.appdownloader.view.JumpUnknownSourceActivity.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    if (JumpUnknownSourceActivity.this.ox != null) {
                        JumpUnknownSourceActivity jumpUnknownSourceActivity = JumpUnknownSourceActivity.this;
                        d.dq((Context) jumpUnknownSourceActivity, jumpUnknownSourceActivity.ox, true);
                    }
                    d.d(JumpUnknownSourceActivity.this.p, JumpUnknownSourceActivity.this.s);
                    JumpUnknownSourceActivity.this.finish();
                }
            }).dq(false);
            this.dq = dq2.dq();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void dq() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        window.setAttributes(attributes);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        dq();
        ia.dq().dq(this);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        ia.dq().dq(this);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        Intent intent = getIntent();
        this.f9309d = intent;
        if (intent != null) {
            this.ox = (Intent) intent.getParcelableExtra("intent");
            this.p = intent.getIntExtra(TTDownloadField.TT_ID, -1);
            try {
                this.s = new JSONObject(intent.getStringExtra("config"));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (this.s == null) {
            com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
            return;
        }
        d();
        no noVar = this.dq;
        if (noVar != null && !noVar.d()) {
            this.dq.dq();
        } else if (this.dq == null) {
            finish();
        }
    }
}
