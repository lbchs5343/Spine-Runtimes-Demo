package com.bytedance.embedapplog;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.bytedance.embedapplog.jy;
import com.bytedance.embedapplog.o;

/* loaded from: classes.dex */
final class er extends tl<jy> {
    public er() {
        super("com.asus.msa.SupplementaryDID");
    }

    @Override // com.bytedance.embedapplog.tl
    public o.d<jy, String> dq() {
        return new o.d<jy, String>() { // from class: com.bytedance.embedapplog.er.1
            @Override // com.bytedance.embedapplog.o.d
            /* renamed from: d, reason: merged with bridge method [inline-methods] */
            public jy dq(IBinder iBinder) {
                return jy.dq.dq(iBinder);
            }

            @Override // com.bytedance.embedapplog.o.d
            public String dq(jy jyVar) {
                if (jyVar == null) {
                    return null;
                }
                return jyVar.ox();
            }
        };
    }

    @Override // com.bytedance.embedapplog.tl
    public Intent ox(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.asus.msa.action.ACCESS_DID");
        intent.setComponent(new ComponentName("com.asus.msa.SupplementaryDID", "com.asus.msa.SupplementaryDID.SupplementaryDIDService"));
        return intent;
    }
}
