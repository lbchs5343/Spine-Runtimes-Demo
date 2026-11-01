package com.android.billingclient.api;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class Purchase {

    /* renamed from: a, reason: collision with root package name */
    public final String f409a;

    /* renamed from: b, reason: collision with root package name */
    public final String f410b;

    /* renamed from: c, reason: collision with root package name */
    public final JSONObject f411c;

    public Purchase(String str, String str2) {
        this.f409a = str;
        this.f410b = str2;
        this.f411c = new JSONObject(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        return TextUtils.equals(this.f409a, purchase.f409a) && TextUtils.equals(this.f410b, purchase.f410b);
    }

    public final int hashCode() {
        return this.f409a.hashCode();
    }

    public final String toString() {
        return "Purchase. Json: ".concat(String.valueOf(this.f409a));
    }
}
