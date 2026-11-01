package com.ss.android.socialbase.appdownloader.dq;

import android.content.Context;
import android.content.Intent;
import com.bykv.vk.component.ttvideo.player.C;
import g.awf;

/* loaded from: classes.dex */
public class ia extends dq {
    public ia(Context context, com.ss.android.socialbase.downloader.mn.dq dqVar, String str) {
        super(context, dqVar, str);
    }

    @Override // com.ss.android.socialbase.appdownloader.dq.s
    public Intent d() {
        Intent intent = new Intent(awf.ad(new StringBuilder(), com.ss.android.socialbase.downloader.constants.s.ox, ".intent.action.OPEN_FILEMANAGER"));
        intent.putExtra("CurrentDir", this.ox);
        intent.putExtra("first_position", 1);
        intent.putExtra("CurrentMode", 1);
        intent.putExtra("com.iqoo.secure", true);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.addFlags(32768);
        intent.addFlags(C.ENCODING_PCM_32BIT);
        return intent;
    }
}
