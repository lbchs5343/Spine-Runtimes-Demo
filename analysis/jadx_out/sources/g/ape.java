package g;

import android.text.TextUtils;

/* loaded from: classes.dex */
public class ape {

    /* renamed from: c, reason: collision with root package name */
    public int f10611c;

    /* renamed from: d, reason: collision with root package name */
    public int f10612d;

    public static int e(String str) {
        if (TextUtils.isEmpty(str) || str.length() != 4) {
            return -1159790593;
        }
        return ((str.charAt(3) & 255) << 24) | (str.charAt(0) & 255) | ((str.charAt(1) & 255) << 8) | ((str.charAt(2) & 255) << 16);
    }

    public void b(dbj dbjVar) {
    }
}
