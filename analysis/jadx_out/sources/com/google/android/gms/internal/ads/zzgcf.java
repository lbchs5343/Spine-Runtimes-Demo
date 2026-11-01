package com.google.android.gms.internal.ads;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class zzgcf implements FilenameFilter {

    /* renamed from: a, reason: collision with root package name */
    public final Pattern f8252a;

    public zzgcf(Pattern pattern) {
        pattern.getClass();
        this.f8252a = pattern;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return this.f8252a.matcher(str).matches();
    }
}
