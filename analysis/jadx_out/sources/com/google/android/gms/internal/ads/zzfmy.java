package com.google.android.gms.internal.ads;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzfmy {

    /* renamed from: b, reason: collision with root package name */
    public final String f8037b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfnj f8038c;

    /* renamed from: d, reason: collision with root package name */
    public final String f8039d;

    /* renamed from: e, reason: collision with root package name */
    public final WebView f8040e;

    /* renamed from: g, reason: collision with root package name */
    public final zzfmz f8042g;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f8041f = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8036a = new HashMap();

    public zzfmy(zzfnj zzfnjVar, WebView webView, String str, String str2, zzfmz zzfmzVar) {
        this.f8038c = zzfnjVar;
        this.f8040e = webView;
        this.f8042g = zzfmzVar;
        this.f8039d = str;
        this.f8037b = str2;
    }

    public static zzfmy zzb(zzfnj zzfnjVar, WebView webView, String str, String str2) {
        if (str2 != null) {
            zzfor.zzd(str2, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new zzfmy(zzfnjVar, webView, str, str2, zzfmz.HTML);
    }

    public static zzfmy zzc(zzfnj zzfnjVar, WebView webView, String str, String str2) {
        zzfor.zzd("", 256, "CustomReferenceData is greater than 256 characters");
        return new zzfmy(zzfnjVar, webView, str, "", zzfmz.JAVASCRIPT);
    }

    public final WebView zza() {
        return this.f8040e;
    }

    public final zzfmz zzd() {
        return this.f8042g;
    }

    public final zzfnj zze() {
        return this.f8038c;
    }

    public final String zzf() {
        return this.f8039d;
    }

    public final String zzg() {
        return this.f8037b;
    }

    public final List zzh() {
        return Collections.unmodifiableList(this.f8041f);
    }

    public final Map zzi() {
        return Collections.unmodifiableMap(this.f8036a);
    }
}
