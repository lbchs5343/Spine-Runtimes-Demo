package g;

import android.net.Uri;

/* loaded from: classes3.dex */
public abstract class gbd {

    /* renamed from: a, reason: collision with root package name */
    public static final tl f17850a = new tl(0);

    public static synchronized Uri b() {
        synchronized (gbd.class) {
            tl tlVar = f17850a;
            Uri uri = (Uri) tlVar.get("com.google.android.gms.measurement");
            if (uri != null) {
                return uri;
            }
            Uri parse = Uri.parse("content://com.google.android.gms.phenotype/".concat(String.valueOf(Uri.encode("com.google.android.gms.measurement"))));
            tlVar.put("com.google.android.gms.measurement", parse);
            return parse;
        }
    }
}
