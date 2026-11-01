package com.ss.android.socialbase.appdownloader.dq;

import android.content.Context;
import android.content.Intent;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes.dex */
public class ig extends dq {
    public ig(Context context, com.ss.android.socialbase.downloader.mn.dq dqVar, String str) {
        super(context, dqVar, str);
    }

    @Override // com.ss.android.socialbase.appdownloader.dq.s
    public Intent d() {
        String ox = this.f9273d.ox("s");
        String dq = com.ss.android.socialbase.appdownloader.iw.ox.dq(this.f9273d.ox("ag"), ox);
        String dq2 = com.ss.android.socialbase.appdownloader.iw.ox.dq(this.f9273d.ox("ah"), ox);
        String dq3 = com.ss.android.socialbase.appdownloader.iw.ox.dq(this.f9273d.ox("ai"), ox);
        String dq4 = com.ss.android.socialbase.appdownloader.iw.ox.dq(this.f9273d.ox("aj"), ox);
        Intent intent = new Intent();
        intent.putExtra(dq, this.ox);
        intent.putExtra(dq2, "*/*");
        intent.putExtra(dq3, true);
        intent.setAction(dq4);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.addFlags(32768);
        return intent;
    }
}
