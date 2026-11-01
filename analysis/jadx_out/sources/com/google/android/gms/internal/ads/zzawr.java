package com.google.android.gms.internal.ads;

import android.provider.Settings;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes3.dex */
public final class zzawr extends zzaxt {
    public zzawr(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2) {
        super(zzawfVar, "cASF9v3LVjFjcts3pzkxEpbZ/yZ0Z6rgUJw8wYZADCZYBHbsegUqurxqMOQQnwLa", "YV8d9qma0OL6XD+53oet9uRH00OzaYnpRo+iusl6DCM=", zzasfVar, i, 49);
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        zzasf zzasfVar = this.i;
        zzasfVar.zzaa(3);
        try {
            int i = 1;
            if (true == ((Boolean) this.j.invoke(null, this.k.zzb())).booleanValue()) {
                i = 2;
            }
            zzasfVar.zzaa(i);
        } catch (InvocationTargetException e2) {
            if (!(e2.getTargetException() instanceof Settings.SettingNotFoundException)) {
                throw e2;
            }
        }
    }
}
