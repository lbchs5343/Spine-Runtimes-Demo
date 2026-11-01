package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import g.cmo;
import g.gil;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzclv implements zzclr {

    /* renamed from: a, reason: collision with root package name */
    public final gil f5335a;

    public zzclv(gil gilVar) {
        this.f5335a = gilVar;
    }

    @Override // com.google.android.gms.internal.ads.zzclr
    public final void zza(Map map) {
        boolean parseBoolean = Boolean.parseBoolean((String) map.get("content_vertical_opted_out"));
        cmo cmoVar = (cmo) this.f5335a;
        cmoVar.aj();
        synchronized (cmoVar.k) {
            try {
                if (cmoVar.o == parseBoolean) {
                    return;
                }
                cmoVar.o = parseBoolean;
                SharedPreferences.Editor editor = cmoVar.ac;
                if (editor != null) {
                    editor.putBoolean("content_vertical_opted_out", parseBoolean);
                    cmoVar.ac.apply();
                }
                cmoVar.ah();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
