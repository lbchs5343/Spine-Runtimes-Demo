package g;

import android.text.TextUtils;
import android.view.View;

/* loaded from: classes.dex */
public final class hej extends bwp {
    public final /* synthetic */ int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ hej(int i, Class cls, int i2, int i3, int i4) {
        super(i, cls, i2, i3);
        this.k = i4;
    }

    @Override // g.bwp
    public final boolean h(Object obj, Object obj2) {
        boolean equals;
        switch (this.k) {
            case 0:
                Boolean bool = (Boolean) obj;
                Boolean bool2 = (Boolean) obj2;
                return !((bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue()));
            case 1:
                equals = TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
                break;
            case 2:
                equals = TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
                break;
            default:
                Boolean bool3 = (Boolean) obj;
                Boolean bool4 = (Boolean) obj2;
                return !((bool3 != null && bool3.booleanValue()) == (bool4 != null && bool4.booleanValue()));
        }
        return !equals;
    }

    @Override // g.bwp
    public final Object i(View view) {
        switch (this.k) {
            case 0:
                return Boolean.valueOf(byl.f(view));
            case 1:
                return byl.c(view);
            case 2:
                return gfn.b(view);
            default:
                return Boolean.valueOf(byl.e(view));
        }
    }

    @Override // g.bwp
    public final void j(View view, Object obj) {
        switch (this.k) {
            case 0:
                byl.d(view, ((Boolean) obj).booleanValue());
                break;
            case 1:
                byl.b(view, (CharSequence) obj);
                break;
            case 2:
                gfn.c(view, (CharSequence) obj);
                break;
            default:
                byl.a(view, ((Boolean) obj).booleanValue());
                break;
        }
    }
}
