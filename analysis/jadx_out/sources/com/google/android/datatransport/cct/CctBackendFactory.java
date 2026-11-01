package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import g.azb;
import g.bug;
import g.cov;
import g.dte;

@Keep
/* loaded from: classes3.dex */
public class CctBackendFactory {
    public dte create(bug bugVar) {
        azb azbVar = (azb) bugVar;
        return new cov(azbVar.f11101b, azbVar.f11102c, azbVar.f11103d);
    }
}
