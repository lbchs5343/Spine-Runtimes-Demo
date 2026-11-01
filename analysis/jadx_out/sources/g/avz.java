package g;

import android.content.SharedPreferences;
import java.io.Serializable;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class avz {

    /* renamed from: a, reason: collision with root package name */
    public final Serializable f10951a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f10952b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10953c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f10954d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f10955e;

    public avz() {
        this.f10951a = new HashSet();
        this.f10952b = new HashSet();
        this.f10955e = true;
    }

    public avz(gmr gmrVar, String str, boolean z) {
        this.f10952b = gmrVar;
        ckd.bf(str);
        this.f10951a = str;
        this.f10953c = z;
    }

    public void f(boolean z) {
        SharedPreferences.Editor edit = ((gmr) this.f10952b).ar().edit();
        edit.putBoolean((String) this.f10951a, z);
        edit.apply();
        this.f10955e = z;
    }

    public boolean g() {
        if (!this.f10954d) {
            this.f10954d = true;
            this.f10955e = ((gmr) this.f10952b).ar().getBoolean((String) this.f10951a, this.f10953c);
        }
        return this.f10955e;
    }
}
