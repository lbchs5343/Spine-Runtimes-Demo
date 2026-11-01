package g;

import android.content.Context;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class auj implements cng {

    /* renamed from: a, reason: collision with root package name */
    public long f10865a;

    /* renamed from: b, reason: collision with root package name */
    public int f10866b;

    /* renamed from: c, reason: collision with root package name */
    public LinkedHashMap f10867c;

    /* renamed from: d, reason: collision with root package name */
    public String f10868d;

    /* renamed from: e, reason: collision with root package name */
    public LinkedHashMap f10869e;

    /* renamed from: f, reason: collision with root package name */
    public String f10870f;

    /* renamed from: g, reason: collision with root package name */
    public int f10871g;
    public String h;
    public long i;
    public String j;
    public WeakReference k;

    public final Drawable l(Context context, boolean z) {
        WeakReference ac;
        WeakReference weakReference = this.k;
        if (weakReference != null && weakReference.get() != null) {
            return (Drawable) this.k.get();
        }
        if (!z || (ac = cwz.b(context).ac(this.h)) == null) {
            return null;
        }
        this.k = ac;
        return (Drawable) ac.get();
    }
}
