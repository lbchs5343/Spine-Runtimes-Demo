package g;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.google.android.gms.internal.ads.zzeif;
import com.google.android.gms.internal.ads.zzeiw;
import com.google.android.gms.internal.ads.zzfet;
import com.google.android.gms.internal.ads.zzgee;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class ffm implements zzgee {

    /* renamed from: a, reason: collision with root package name */
    public final Object f16709a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16710b;

    public /* synthetic */ ffm(clx clxVar, String str) {
        this.f16709a = clxVar;
        this.f16710b = str;
    }

    public /* synthetic */ ffm(Object obj, Object obj2) {
        this.f16709a = obj2;
        this.f16710b = obj;
    }

    public Object c() {
        clx clxVar = (clx) this.f16709a;
        String str = (String) this.f16710b;
        ContentResolver contentResolver = ((Context) clxVar.f13103e).getContentResolver();
        Uri uri = gsj.f18689e;
        synchronized (gsj.class) {
            try {
                if (gsj.f18688d == null) {
                    gsj.f18687c.set(false);
                    gsj.f18688d = new HashMap();
                    gsj.i = new Object();
                    contentResolver.registerContentObserver(gsj.f18689e, true, new bua(null, 0));
                } else if (gsj.f18687c.getAndSet(false)) {
                    gsj.f18688d.clear();
                    gsj.f18690f.clear();
                    gsj.k.clear();
                    gsj.f18685a.clear();
                    gsj.f18691g.clear();
                    gsj.i = new Object();
                }
                Object obj = gsj.i;
                if (gsj.f18688d.containsKey(str)) {
                    String str2 = (String) gsj.f18688d.get(str);
                    if (str2 != null) {
                        r9 = str2;
                    }
                    return r9;
                }
                int length = gsj.f18686b.length;
                Cursor query = contentResolver.query(gsj.f18689e, null, null, new String[]{str}, null);
                if (query == null) {
                    return null;
                }
                try {
                    if (!query.moveToFirst()) {
                        gsj.l(str, null, obj);
                        return null;
                    }
                    String string = query.getString(1);
                    if (string != null && string.equals(null)) {
                        string = null;
                    }
                    gsj.l(str, string, obj);
                    return string != null ? string : null;
                } finally {
                    query.close();
                }
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        synchronized (((zzeif) this.f16710b)) {
            try {
                ((zzeif) this.f16710b).f7009a.s((zzfet) this.f16709a);
                zzfet p = ((zzeif) this.f16710b).f7009a.p();
                if (((zzfet) this.f16709a).zzav) {
                    while (p != null) {
                        ((zzeif) this.f16710b).j(p);
                        p = ((zzeif) this.f16710b).f7009a.p();
                    }
                } else if (p != null) {
                    ((zzeif) this.f16710b).j(p);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzeiw zzeiwVar = (zzeiw) obj;
        synchronized (((zzeif) this.f16710b)) {
            try {
                ((zzeif) this.f16710b).f7009a.t(zzeiwVar, (zzfet) this.f16709a);
                zzfet p = ((zzeif) this.f16710b).f7009a.p();
                if (p != null) {
                    ((zzeif) this.f16710b).j(p);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
