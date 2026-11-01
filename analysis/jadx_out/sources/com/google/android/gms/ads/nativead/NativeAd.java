package com.google.android.gms.ads.nativead;

import android.os.Bundle;
import g.bjq;
import g.bof;

/* loaded from: classes3.dex */
public abstract class NativeAd {
    public abstract bjq a();

    public abstract String getBody();

    public abstract String getHeadline();

    public abstract bof getResponseInfo();

    public abstract void recordEvent(Bundle bundle);
}
