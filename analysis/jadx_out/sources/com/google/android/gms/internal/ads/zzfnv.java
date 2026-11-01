package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class zzfnv {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f8082a = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f8083b = new ArrayList();

    public final List zza() {
        return this.f8083b;
    }

    public final void zzb(View view, zzfnd zzfndVar, String str) {
        zzfnu zzfnuVar;
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
        if (!f8082a.matcher("Ad overlay").matches()) {
            throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
        }
        ArrayList arrayList = this.f8083b;
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                zzfnuVar = null;
                break;
            } else {
                zzfnuVar = (zzfnu) it.next();
                if (zzfnuVar.zzb().get() == view) {
                    break;
                }
            }
        }
        if (zzfnuVar == null) {
            arrayList.add(new zzfnu(view, zzfndVar, "Ad overlay"));
        }
    }

    public final void zzc() {
        this.f8083b.clear();
    }
}
