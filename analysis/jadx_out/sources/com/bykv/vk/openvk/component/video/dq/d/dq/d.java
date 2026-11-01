package com.bykv.vk.openvk.component.video.dq.d.dq;

import android.content.Context;
import com.bykv.vk.openvk.component.video.dq.d.p;
import com.bykv.vk.openvk.component.video.dq.d.s;
import com.bytedance.sdk.component.o.kk;
import java.io.File;

/* loaded from: classes.dex */
public class d extends dq {
    public final File dq;

    public void d() {
        p.ox().p();
        Context context = s.getContext();
        if (context != null) {
            com.bykv.vk.openvk.component.video.dq.d.d.ox.dq(context).dq(1);
        }
        for (File file : this.dq.listFiles()) {
            try {
                file.delete();
            } catch (Throwable unused) {
            }
        }
    }

    public void dq() {
        com.bykv.vk.openvk.component.video.dq.ox.dq.dq(new kk("clear") { // from class: com.bykv.vk.openvk.component.video.dq.d.dq.d.1
            @Override // java.lang.Runnable
            public void run() {
                d.this.d();
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.dq.d.dq.dq
    public File ox(String str) {
        return s(str);
    }

    @Override // com.bykv.vk.openvk.component.video.dq.d.dq.dq
    public File p(String str) {
        return s(str);
    }

    public File s(String str) {
        return new File(this.dq, str);
    }
}
