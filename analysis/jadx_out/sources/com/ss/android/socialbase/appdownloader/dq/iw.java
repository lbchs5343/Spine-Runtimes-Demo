package com.ss.android.socialbase.appdownloader.dq;

import android.content.Context;
import android.content.Intent;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes.dex */
public class iw extends dq {
    public iw(Context context) {
        super(context, null, null);
    }

    @Override // com.ss.android.socialbase.appdownloader.dq.s
    public Intent d() {
        Intent intent = new Intent("android.settings.SECURITY_SETTINGS");
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.addFlags(C.ENCODING_PCM_32BIT);
        intent.addFlags(8388608);
        return intent;
    }
}
