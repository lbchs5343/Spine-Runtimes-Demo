package g;

import android.util.Base64;
import java.util.List;

/* loaded from: classes.dex */
public final class bui {

    /* renamed from: a, reason: collision with root package name */
    public final List f12217a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12218b;

    /* renamed from: c, reason: collision with root package name */
    public final String f12219c;

    /* renamed from: d, reason: collision with root package name */
    public final String f12220d;

    /* renamed from: e, reason: collision with root package name */
    public final String f12221e;

    /* renamed from: f, reason: collision with root package name */
    public final String f12222f;

    /* renamed from: g, reason: collision with root package name */
    public final String f12223g;

    public bui(String str, String str2, String str3, List list, String str4, String str5) {
        str.getClass();
        this.f12219c = str;
        str2.getClass();
        this.f12221e = str2;
        this.f12222f = str3;
        list.getClass();
        this.f12217a = list;
        this.f12218b = str4;
        this.f12220d = str5;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("-");
        sb.append(str2);
        sb.append("-");
        sb.append(str3);
        this.f12223g = awf.r(sb, "-", str4, "-", str5);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f12219c + ", mProviderPackage: " + this.f12221e + ", mQuery: " + this.f12222f + ", mSystemFont: " + this.f12218b + ", mVariationSettings: " + this.f12220d + ", mCertificates:");
        int i = 0;
        while (true) {
            List list = this.f12217a;
            if (i >= list.size()) {
                sb.append("}mCertificatesArray: 0");
                return sb.toString();
            }
            sb.append(" [");
            List list2 = (List) list.get(i);
            for (int i2 = 0; i2 < list2.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString((byte[]) list2.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
            i++;
        }
    }
}
