package com.ss.android.socialbase.appdownloader.dq;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes.dex */
public class d extends dq {
    public d(Context context) {
        super(context, null, null);
    }

    @Override // com.ss.android.socialbase.appdownloader.dq.s
    public Intent d() {
        Intent intent = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + this.dq.getPackageName()));
        intent.addFlags(C.ENCODING_PCM_32BIT);
        intent.addFlags(8388608);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        return intent;
    }
}
