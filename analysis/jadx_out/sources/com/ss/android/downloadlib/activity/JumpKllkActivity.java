package com.ss.android.downloadlib.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.mn.ia;
import com.ss.android.downloadlib.s.ox;

/* loaded from: classes.dex */
public class JumpKllkActivity extends TTDelegateActivity {
    @Override // com.ss.android.downloadlib.activity.TTDelegateActivity
    public void dq() {
        Intent intent = getIntent();
        if (getIntent() == null) {
            ox.dq().dq("handleIntent is null");
            com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
            return;
        }
        String stringExtra = intent.getStringExtra("p");
        long longExtra = intent.getLongExtra(TTDownloadField.TT_ID, 0L);
        if (TextUtils.isEmpty(stringExtra) || longExtra == 0) {
            ox.dq().dq("getPackage or id is null");
            com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
        }
        boolean booleanExtra = intent.getBooleanExtra("dl", false);
        String stringExtra2 = intent.getStringExtra("bk");
        if ((!TextUtils.isEmpty(stringExtra2)) && booleanExtra) {
            ia.dq((Context) this, stringExtra, longExtra, stringExtra2, true);
            com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
            return;
        }
        int optInt = no.kk().optInt("ab", 0);
        ia.dq(this, stringExtra, longExtra, optInt == 1);
        if (optInt != 1) {
            com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
    }
}
