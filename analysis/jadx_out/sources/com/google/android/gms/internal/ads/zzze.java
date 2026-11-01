package com.google.android.gms.internal.ads;

import g.tn;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzze extends IOException {
    public zzze(Throwable th) {
        super(tn.ad("Unexpected ", th.getClass().getSimpleName(), th.getMessage() != null ? ": ".concat(String.valueOf(th.getMessage())) : ""), th);
    }
}
