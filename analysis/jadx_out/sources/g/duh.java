package g;

import android.net.Uri;
import android.util.Log;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class duh {

    /* renamed from: a, reason: collision with root package name */
    public static volatile avo f14823a;

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicInteger f14824b;

    /* renamed from: c, reason: collision with root package name */
    public static final Object f14825c = new Object();

    /* renamed from: d, reason: collision with root package name */
    public volatile int f14826d = -1;

    /* renamed from: e, reason: collision with root package name */
    public volatile Object f14827e;

    /* renamed from: f, reason: collision with root package name */
    public final gez f14828f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f14829g;
    public final String h;
    public final Object i;

    static {
        new AtomicReference();
        f14824b = new AtomicInteger();
    }

    public /* synthetic */ duh(gez gezVar, String str, Object obj, int i) {
        this.f14829g = i;
        if (((Uri) gezVar.f18008e) == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.f14828f = gezVar;
        this.h = str;
        this.i = obj;
    }

    public final Object j(String str) {
        switch (this.f14829g) {
            case 0:
                try {
                    return Long.valueOf(Long.parseLong(str));
                } catch (NumberFormatException unused) {
                    Log.e("PhenotypeFlag", "Invalid long value for " + this.h + ": " + str);
                    return null;
                }
            case 1:
                if (gsj.h.matcher(str).matches()) {
                    return Boolean.TRUE;
                }
                if (gsj.j.matcher(str).matches()) {
                    return Boolean.FALSE;
                }
                Log.e("PhenotypeFlag", "Invalid boolean value for " + this.h + ": " + str);
                return null;
            case 2:
                try {
                    return Double.valueOf(Double.parseDouble(str));
                } catch (NumberFormatException unused2) {
                    Log.e("PhenotypeFlag", "Invalid double value for " + this.h + ": " + str);
                    return null;
                }
            default:
                return str;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008a A[Catch: all -> 0x0039, TryCatch #0 {all -> 0x0039, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0015, B:11:0x001e, B:13:0x0026, B:15:0x003f, B:17:0x004d, B:20:0x007c, B:22:0x008a, B:24:0x009d, B:27:0x00ac, B:29:0x00bb, B:30:0x00be, B:31:0x00c2, B:32:0x0056, B:34:0x005c, B:37:0x006c, B:39:0x0072, B:41:0x007a, B:42:0x006a, B:46:0x00c7, B:47:0x00ca, B:49:0x00cb, B:50:0x00d0, B:51:0x00d1), top: B:4:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0056 A[Catch: all -> 0x0039, TryCatch #0 {all -> 0x0039, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0015, B:11:0x001e, B:13:0x0026, B:15:0x003f, B:17:0x004d, B:20:0x007c, B:22:0x008a, B:24:0x009d, B:27:0x00ac, B:29:0x00bb, B:30:0x00be, B:31:0x00c2, B:32:0x0056, B:34:0x005c, B:37:0x006c, B:39:0x0072, B:41:0x007a, B:42:0x006a, B:46:0x00c7, B:47:0x00ca, B:49:0x00cb, B:50:0x00d0, B:51:0x00d1), top: B:4:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x007a A[Catch: all -> 0x0039, TryCatch #0 {all -> 0x0039, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0015, B:11:0x001e, B:13:0x0026, B:15:0x003f, B:17:0x004d, B:20:0x007c, B:22:0x008a, B:24:0x009d, B:27:0x00ac, B:29:0x00bb, B:30:0x00be, B:31:0x00c2, B:32:0x0056, B:34:0x005c, B:37:0x006c, B:39:0x0072, B:41:0x007a, B:42:0x006a, B:46:0x00c7, B:47:0x00ca, B:49:0x00cb, B:50:0x00d0, B:51:0x00d1), top: B:4:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object k() {
        Object obj;
        exu exuVar;
        int i = f14824b.get();
        if (this.f14826d < i) {
            synchronized (this) {
                try {
                    if (this.f14826d < i) {
                        avo avoVar = f14823a;
                        if (avoVar == null) {
                            throw new IllegalStateException("Must call PhenotypeFlag.init() first");
                        }
                        Uri uri = (Uri) this.f14828f.f18008e;
                        String str = null;
                        if (uri == null) {
                            bkb.b();
                            throw null;
                        }
                        fod j = dka.c(avoVar.f10927a, uri) ? fod.j(avoVar.f10927a.getContentResolver(), (Uri) this.f14828f.f18008e, foq.f17151a) : null;
                        if (j != null) {
                            String str2 = (String) j.l().get(this.h);
                            if (str2 != null) {
                                obj = j(str2);
                                if (obj == null) {
                                    if (!this.f14828f.f18010g) {
                                        String t = clx.h(avoVar.f10927a).t(this.f14828f.f18010g ? null : this.h);
                                        if (t != null) {
                                            obj = j(t);
                                            if (obj == null) {
                                                obj = this.i;
                                            }
                                        }
                                    }
                                    obj = null;
                                    if (obj == null) {
                                    }
                                }
                                exuVar = (exu) avoVar.f10928b.zza();
                                if (exuVar.c()) {
                                    dbo dboVar = (dbo) exuVar.b();
                                    Uri uri2 = (Uri) this.f14828f.f18008e;
                                    String str3 = this.h;
                                    dboVar.getClass();
                                    if (uri2 != null) {
                                        bcp bcpVar = (bcp) dboVar.f13923a.get(uri2.toString());
                                        if (bcpVar != null) {
                                            str = (String) bcpVar.get("".concat(str3));
                                        }
                                    }
                                    obj = str == null ? this.i : j(str);
                                }
                                this.f14827e = obj;
                                this.f14826d = i;
                            }
                        }
                        obj = null;
                        if (obj == null) {
                        }
                        exuVar = (exu) avoVar.f10928b.zza();
                        if (exuVar.c()) {
                        }
                        this.f14827e = obj;
                        this.f14826d = i;
                    }
                } finally {
                }
            }
        }
        return this.f14827e;
    }
}
