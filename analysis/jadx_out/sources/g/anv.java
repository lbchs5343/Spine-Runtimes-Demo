package g;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.zzban;
import com.google.android.gms.internal.ads.zzbuj;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class anv implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f10533a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Serializable f10534b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f10535c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f10536d = 0;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f10537e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f10538f;

    public anv(int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.f10537e = i;
        this.f10533a = arrayList;
        this.f10534b = arrayList2;
        this.f10535c = arrayList3;
        this.f10538f = arrayList4;
    }

    public /* synthetic */ anv(Context context, String str, awn awnVar, int i, fle fleVar) {
        this.f10533a = context;
        this.f10534b = str;
        this.f10535c = awnVar;
        this.f10537e = i;
        this.f10538f = fleVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f10536d;
        Object obj = this.f10538f;
        Object obj2 = this.f10535c;
        Serializable serializable = this.f10534b;
        Object obj3 = this.f10533a;
        switch (i) {
            case 0:
                for (int i2 = 0; i2 < this.f10537e; i2++) {
                    View view = (View) ((ArrayList) obj3).get(i2);
                    String str = (String) ((ArrayList) serializable).get(i2);
                    WeakHashMap weakHashMap = goi.f18490c;
                    cd.d(view, str);
                    cd.d((View) ((ArrayList) obj2).get(i2), (String) ((ArrayList) obj).get(i2));
                }
                break;
            default:
                Context context = (Context) obj3;
                try {
                    new zzban(context, (String) serializable, ((awn) obj2).f10978a, this.f10537e, (fle) obj).zza();
                    break;
                } catch (IllegalStateException e2) {
                    zzbuj.zza(context).zzh(e2, "AppOpenAd.load");
                }
        }
    }
}
