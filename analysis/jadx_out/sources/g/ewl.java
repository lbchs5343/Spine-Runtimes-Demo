package g;

/* loaded from: classes3.dex */
public final class ewl extends mm {

    /* renamed from: a, reason: collision with root package name */
    public final String f16280a;

    /* renamed from: b, reason: collision with root package name */
    public final String f16281b;

    /* renamed from: c, reason: collision with root package name */
    public final String f16282c;

    /* renamed from: d, reason: collision with root package name */
    public final String f16283d;

    /* renamed from: e, reason: collision with root package name */
    public final String f16284e;

    /* renamed from: f, reason: collision with root package name */
    public final Integer f16285f;

    /* renamed from: g, reason: collision with root package name */
    public final String f16286g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;

    public ewl(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.f16285f = num;
        this.i = str;
        this.k = str2;
        this.f16282c = str3;
        this.f16284e = str4;
        this.f16286g = str5;
        this.l = str6;
        this.f16280a = str7;
        this.h = str8;
        this.j = str9;
        this.f16281b = str10;
        this.f16283d = str11;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof mm) {
            mm mmVar = (mm) obj;
            Integer num = this.f16285f;
            if (num != null ? num.equals(((ewl) mmVar).f16285f) : ((ewl) mmVar).f16285f == null) {
                String str = this.i;
                if (str != null ? str.equals(((ewl) mmVar).i) : ((ewl) mmVar).i == null) {
                    String str2 = this.k;
                    if (str2 != null ? str2.equals(((ewl) mmVar).k) : ((ewl) mmVar).k == null) {
                        String str3 = this.f16282c;
                        if (str3 != null ? str3.equals(((ewl) mmVar).f16282c) : ((ewl) mmVar).f16282c == null) {
                            String str4 = this.f16284e;
                            if (str4 != null ? str4.equals(((ewl) mmVar).f16284e) : ((ewl) mmVar).f16284e == null) {
                                String str5 = this.f16286g;
                                if (str5 != null ? str5.equals(((ewl) mmVar).f16286g) : ((ewl) mmVar).f16286g == null) {
                                    String str6 = this.l;
                                    if (str6 != null ? str6.equals(((ewl) mmVar).l) : ((ewl) mmVar).l == null) {
                                        String str7 = this.f16280a;
                                        if (str7 != null ? str7.equals(((ewl) mmVar).f16280a) : ((ewl) mmVar).f16280a == null) {
                                            String str8 = this.h;
                                            if (str8 != null ? str8.equals(((ewl) mmVar).h) : ((ewl) mmVar).h == null) {
                                                String str9 = this.j;
                                                if (str9 != null ? str9.equals(((ewl) mmVar).j) : ((ewl) mmVar).j == null) {
                                                    String str10 = this.f16281b;
                                                    if (str10 != null ? str10.equals(((ewl) mmVar).f16281b) : ((ewl) mmVar).f16281b == null) {
                                                        String str11 = this.f16283d;
                                                        if (str11 != null ? str11.equals(((ewl) mmVar).f16283d) : ((ewl) mmVar).f16283d == null) {
                                                            return true;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        Integer num = this.f16285f;
        int hashCode = ((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003;
        String str = this.i;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.k;
        int hashCode3 = (hashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f16282c;
        int hashCode4 = (hashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f16284e;
        int hashCode5 = (hashCode4 ^ (str4 == null ? 0 : str4.hashCode())) * 1000003;
        String str5 = this.f16286g;
        int hashCode6 = (hashCode5 ^ (str5 == null ? 0 : str5.hashCode())) * 1000003;
        String str6 = this.l;
        int hashCode7 = (hashCode6 ^ (str6 == null ? 0 : str6.hashCode())) * 1000003;
        String str7 = this.f16280a;
        int hashCode8 = (hashCode7 ^ (str7 == null ? 0 : str7.hashCode())) * 1000003;
        String str8 = this.h;
        int hashCode9 = (hashCode8 ^ (str8 == null ? 0 : str8.hashCode())) * 1000003;
        String str9 = this.j;
        int hashCode10 = (hashCode9 ^ (str9 == null ? 0 : str9.hashCode())) * 1000003;
        String str10 = this.f16281b;
        int hashCode11 = (hashCode10 ^ (str10 == null ? 0 : str10.hashCode())) * 1000003;
        String str11 = this.f16283d;
        return (str11 != null ? str11.hashCode() : 0) ^ hashCode11;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AndroidClientInfo{sdkVersion=");
        sb.append(this.f16285f);
        sb.append(", model=");
        sb.append(this.i);
        sb.append(", hardware=");
        sb.append(this.k);
        sb.append(", device=");
        sb.append(this.f16282c);
        sb.append(", product=");
        sb.append(this.f16284e);
        sb.append(", osBuild=");
        sb.append(this.f16286g);
        sb.append(", manufacturer=");
        sb.append(this.l);
        sb.append(", fingerprint=");
        sb.append(this.f16280a);
        sb.append(", locale=");
        sb.append(this.h);
        sb.append(", country=");
        sb.append(this.j);
        sb.append(", mccMnc=");
        sb.append(this.f16281b);
        sb.append(", applicationBuild=");
        return awf.ad(sb, this.f16283d, "}");
    }
}
