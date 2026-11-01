package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import g.cmo;
import g.gil;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzclt implements zzclr {

    /* renamed from: a, reason: collision with root package name */
    public final gil f5333a;

    public zzclt(gil gilVar) {
        this.f5333a = gilVar;
    }

    @Override // com.google.android.gms.internal.ads.zzclr
    public final void zza(Map map) {
        boolean parseBoolean = Boolean.parseBoolean((String) map.get("content_url_opted_out"));
        cmo cmoVar = (cmo) this.f5333a;
        cmoVar.aj();
        synchronized (cmoVar.k) {
            try {
                if (cmoVar.l == parseBoolean) {
                    return;
                }
                cmoVar.l = parseBoolean;
                SharedPreferences.Editor editor = cmoVar.ac;
                if (editor != null) {
                    editor.putBoolean("content_url_opted_out", parseBoolean);
                    cmoVar.ac.apply();
                }
                cmoVar.ah();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
