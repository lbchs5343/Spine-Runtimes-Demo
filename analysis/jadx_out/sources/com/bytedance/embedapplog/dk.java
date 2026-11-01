package com.bytedance.embedapplog;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.bytedance.embedapplog.b;
import com.bytedance.embedapplog.hy;
import com.bytedance.embedapplog.o;

/* loaded from: classes.dex */
public class dk extends tl<b> {

    /* renamed from: d, reason: collision with root package name */
    final a f711d;
    final ny dq;

    public dk() {
        super("com.hihonor.id");
        this.dq = new ny();
        this.f711d = new a();
    }

    @Override // com.bytedance.embedapplog.tl, com.bytedance.embedapplog.hy
    public hy.dq d(Context context) {
        new o(context, ox(context), dq()).dq();
        hy.dq dqVar = new hy.dq();
        dqVar.f721d = this.dq.d();
        dqVar.ox = this.f711d.d();
        return dqVar;
    }

    @Override // com.bytedance.embedapplog.tl
    public o.d<b, String> dq() {
        return new o.d<b, String>() { // from class: com.bytedance.embedapplog.dk.1
            @Override // com.bytedance.embedapplog.o.d
            /* renamed from: d, reason: merged with bridge method [inline-methods] */
            public b dq(IBinder iBinder) {
                return b.dq.dq(iBinder);
            }

            @Override // com.bytedance.embedapplog.o.d
            public String dq(b bVar) {
                if (bVar == null) {
                    Log.e("honor# ", "service is null");
                    return null;
                }
                bVar.dq(dk.this.dq);
                bVar.d(dk.this.f711d);
                return "";
            }
        };
    }

    @Override // com.bytedance.embedapplog.tl, com.bytedance.embedapplog.hy
    public /* bridge */ /* synthetic */ boolean dq(Context context) {
        return super.dq(context);
    }

    @Override // com.bytedance.embedapplog.tl
    public Intent ox(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.hihonor.id.HnOaIdService");
        intent.setPackage("com.hihonor.id");
        return intent;
    }
}
