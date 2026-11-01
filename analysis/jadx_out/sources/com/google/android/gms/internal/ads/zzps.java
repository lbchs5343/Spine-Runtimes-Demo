package com.google.android.gms.internal.ads;

import g.awf;

/* loaded from: classes3.dex */
public final class zzps extends Exception {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzps(long j, long j2) {
        super(r5.toString());
        StringBuilder l = awf.l(j2, "Unexpected audio track timestamp discontinuity: expected ", ", got ");
        l.append(j);
    }
}
