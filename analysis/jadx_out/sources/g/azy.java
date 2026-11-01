package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class azy {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f11139a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11140b;

    /* renamed from: c, reason: collision with root package name */
    public final String f11141c;

    /* renamed from: d, reason: collision with root package name */
    public final int f11142d;

    /* renamed from: e, reason: collision with root package name */
    public int f11143e;

    /* renamed from: f, reason: collision with root package name */
    public final String f11144f;

    /* renamed from: g, reason: collision with root package name */
    public final String f11145g;
    public aot h;

    public azy(String str, String str2, int i, String str3, String str4) {
        this.f11142d = i;
        this.f11144f = str;
        this.f11145g = str2;
        this.f11140b = str3;
        this.f11141c = str4;
    }

    public final azy i(String str) {
        azy azyVar = new azy(this.f11144f, this.f11145g, this.f11142d, String.format("%s_res_0x%08x", str, Integer.valueOf(this.f11142d)), this.f11141c);
        azyVar.f11143e = this.f11143e;
        azyVar.h = this.h;
        azyVar.f11139a = this.f11139a;
        return azyVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("  0x");
        int i = this.f11142d;
        sb.append(Integer.toHexString(i));
        sb.append(" (");
        sb.append(i);
        sb.append(')');
        sb.append(this.f11141c);
        sb.append(" = ");
        sb.append(this.f11145g);
        sb.append('.');
        sb.append(this.f11140b);
        return sb.toString();
    }
}
