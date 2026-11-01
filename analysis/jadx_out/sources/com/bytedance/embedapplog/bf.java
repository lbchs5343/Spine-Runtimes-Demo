package com.bytedance.embedapplog;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.bytedance.embedapplog.fw;
import com.bytedance.embedapplog.hy;
import com.bytedance.embedapplog.o;

/* loaded from: classes.dex */
final class bf extends tl<fw> {
    public bf() {
        super("com.mdid.msa");
    }

    private void dq(Context context, String str) {
        Intent intent = new Intent();
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaKlService");
        intent.setAction("com.bun.msa.action.start.service");
        intent.putExtra("com.bun.msa.param.pkgname", str);
        try {
            intent.putExtra("com.bun.msa.param.runinset", true);
            context.startService(intent);
        } catch (Exception e2) {
            jo.dq(e2);
        }
    }

    @Override // com.bytedance.embedapplog.tl, com.bytedance.embedapplog.hy
    public hy.dq d(Context context) {
        dq(context, context.getPackageName());
        return super.d(context);
    }

    @Override // com.bytedance.embedapplog.tl
    public o.d<fw, String> dq() {
        return new o.d<fw, String>() { // from class: com.bytedance.embedapplog.bf.1
            @Override // com.bytedance.embedapplog.o.d
            /* renamed from: d, reason: merged with bridge method [inline-methods] */
            public fw dq(IBinder iBinder) {
                return fw.dq.dq(iBinder);
            }

            @Override // com.bytedance.embedapplog.o.d
            public String dq(fw fwVar) {
                if (fwVar == null) {
                    return null;
                }
                return fwVar.dq();
            }
        };
    }

    @Override // com.bytedance.embedapplog.tl
    public Intent ox(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
        intent.setAction("com.bun.msa.action.bindto.service");
        intent.putExtra("com.bun.msa.param.pkgname", context.getPackageName());
        return intent;
    }
}
