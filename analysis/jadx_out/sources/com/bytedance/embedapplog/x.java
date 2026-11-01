package com.bytedance.embedapplog;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.provider.Settings;
import android.text.TextUtils;
import com.bytedance.embedapplog.hy;
import com.bytedance.embedapplog.ig;
import com.bytedance.embedapplog.o;

/* loaded from: classes.dex */
public class x extends tl<ig> {
    private final Context dq;

    public x(Context context) {
        super("com.coolpad.deviceidsupport");
        this.dq = context;
    }

    @Override // com.bytedance.embedapplog.tl, com.bytedance.embedapplog.hy
    public hy.dq d(Context context) {
        try {
            String string = Settings.Global.getString(context.getContentResolver(), "coolos.oaid");
            if (!TextUtils.isEmpty(string)) {
                hy.dq dqVar = new hy.dq();
                dqVar.f721d = string;
                return dqVar;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return super.d(context);
    }

    @Override // com.bytedance.embedapplog.tl
    public o.d<ig, String> dq() {
        return new o.d<ig, String>() { // from class: com.bytedance.embedapplog.x.1
            @Override // com.bytedance.embedapplog.o.d
            /* renamed from: d, reason: merged with bridge method [inline-methods] */
            public ig dq(IBinder iBinder) {
                return ig.dq.dq(iBinder);
            }

            @Override // com.bytedance.embedapplog.o.d
            public String dq(ig igVar) {
                if (igVar == null) {
                    return null;
                }
                return igVar.d(x.this.dq.getPackageName());
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
        intent.setComponent(new ComponentName("com.coolpad.deviceidsupport", "com.coolpad.deviceidsupport.DeviceIdService"));
        return intent;
    }
}
