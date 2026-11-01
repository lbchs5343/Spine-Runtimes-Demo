package com.ss.android.socialbase.appdownloader.dq;

import android.content.Context;
import android.content.Intent;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes.dex */
public class no extends dq {
    public no(Context context, com.ss.android.socialbase.downloader.mn.dq dqVar, String str) {
        super(context, dqVar, str);
    }

    @Override // com.ss.android.socialbase.appdownloader.dq.s
    public Intent d() {
        Intent intent = new Intent("com.android.filemanager.OPEN_FOLDER");
        intent.putExtra("com.android.filemanager.OPEN_FOLDER", this.ox);
        intent.putExtra("com.iqoo.secure", true);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.addFlags(32768);
        intent.addFlags(C.ENCODING_PCM_32BIT);
        return intent;
    }
}
