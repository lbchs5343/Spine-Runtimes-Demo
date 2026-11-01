package g;

import java.io.Serializable;
import java.util.Map;

/* loaded from: classes.dex */
public final class dzd implements faq {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15115a;

    /* renamed from: b, reason: collision with root package name */
    public Serializable f15116b;

    public /* synthetic */ dzd(Enum r1, int i) {
        this.f15115a = i;
        this.f15116b = r1;
    }

    public dzd(String str) {
        this.f15115a = 3;
        if (str.equalsIgnoreCase("true")) {
            this.f15116b = Boolean.TRUE;
        } else if (str.equalsIgnoreCase("false")) {
            this.f15116b = Boolean.FALSE;
        } else {
            if (!str.equalsIgnoreCase("null")) {
                throw new IllegalArgumentException();
            }
            this.f15116b = null;
        }
    }

    @Override // g.faq
    public final String d() {
        switch (this.f15115a) {
            case 0:
                return ((ekx) this.f15116b).f();
            case 1:
                return ((abo) this.f15116b).c();
            case 2:
                return ((Number) this.f15116b).toString();
            default:
                Boolean bool = (Boolean) this.f15116b;
                return bool != null ? bool.toString() : "NULL";
        }
    }

    @Override // g.faq
    public final axb dq() {
        switch (this.f15115a) {
            case 0:
                return (ekx) this.f15116b;
            case 1:
                return (abo) this.f15116b;
            case 2:
                return gt.mn;
            default:
                return gt.no;
        }
    }

    @Override // g.faq
    public final Object dq(Map map) {
        switch (this.f15115a) {
            case 0:
                throw new UnsupportedOperationException();
            case 1:
                throw new UnsupportedOperationException();
            case 2:
                return (Number) this.f15116b;
            default:
                return (Boolean) this.f15116b;
        }
    }

    public final String toString() {
        switch (this.f15115a) {
            case 0:
                return ((ekx) this.f15116b).f();
            case 1:
                return ((abo) this.f15116b).c();
            case 2:
                return ((Number) this.f15116b).toString();
            default:
                return "KeywordNode [keywordValue=" + ((Boolean) this.f15116b) + "]";
        }
    }
}
