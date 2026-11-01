package g;

import android.content.Context;
import com.google.android.datatransport.cct.CctBackendFactory;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class cuc {

    /* renamed from: a, reason: collision with root package name */
    public final gtb f13520a;

    /* renamed from: b, reason: collision with root package name */
    public final enp f13521b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f13522c;

    public cuc(Context context, enp enpVar) {
        gtb gtbVar = new gtb((Object) context, 8, false);
        this.f13522c = new HashMap();
        this.f13520a = gtbVar;
        this.f13521b = enpVar;
    }

    public final synchronized dte d(String str) {
        if (this.f13522c.containsKey(str)) {
            return (dte) this.f13522c.get(str);
        }
        CctBackendFactory s = this.f13520a.s(str);
        if (s == null) {
            return null;
        }
        enp enpVar = this.f13521b;
        dte create = s.create(new azb(enpVar.f15868a, enpVar.f15869b, enpVar.f15870c, str));
        this.f13522c.put(str, create);
        return create;
    }
}
