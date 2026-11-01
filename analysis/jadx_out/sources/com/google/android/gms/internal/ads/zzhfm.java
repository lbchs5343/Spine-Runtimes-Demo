package com.google.android.gms.internal.ads;

import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class zzhfm extends zzhfp {

    /* renamed from: a, reason: collision with root package name */
    public final Logger f8726a;

    public zzhfm(String str) {
        this.f8726a = Logger.getLogger(str);
    }

    @Override // com.google.android.gms.internal.ads.zzhfp
    public final void zza(String str) {
        this.f8726a.logp(Level.FINE, "com.googlecode.mp4parser.util.JuliLogger", "logDebug", str);
    }
}
