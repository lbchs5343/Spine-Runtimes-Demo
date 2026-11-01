package g;

import java.text.Collator;
import java.util.Locale;

/* loaded from: classes.dex */
public final class gwf {

    /* renamed from: a, reason: collision with root package name */
    public int f18867a;

    /* renamed from: b, reason: collision with root package name */
    public fc f18868b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18869c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f18870d;

    /* renamed from: e, reason: collision with root package name */
    public efx f18871e;

    /* renamed from: f, reason: collision with root package name */
    public String f18872f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f18873g;
    public cwz h;
    public emr i;
    public cwq j;
    public dgx k;

    public final void l(String str) {
        String trim = str == null ? null : str.trim();
        this.f18872f = trim;
        int i = this.f18867a + 1;
        this.f18867a = i;
        this.h.ad(new ja(this, this.f18869c, trim), new byq(this, trim, Locale.getDefault().equals(Locale.CHINA), Collator.getInstance()), new ev(i, this));
    }
}
