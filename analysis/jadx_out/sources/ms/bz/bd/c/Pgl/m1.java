package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class m1 {

    /* renamed from: a, reason: collision with root package name */
    public static m1 f21171a;

    /* renamed from: b, reason: collision with root package name */
    public Context f21172b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f21173c;

    public static m1 d(Context context) {
        if (f21171a == null) {
            synchronized (m1.class) {
                try {
                    if (f21171a == null) {
                        m1 m1Var = new m1();
                        m1Var.f21172b = null;
                        m1Var.f21173c = new ArrayList();
                        m1Var.f21172b = context;
                        f21171a = m1Var;
                    }
                } finally {
                }
            }
        }
        return f21171a;
    }

    public final int e() {
        if (this.f21172b.registerReceiver(null, new IntentFilter((String) pblk.a(16777217, 0, 0L, "a3fd2d", new byte[]{113, 63, 17, 2, 2, 122, 102, 92, 62, 58, 100, 52, 27, 4, 67, 114, 97, 6, 62, 59, 126, Byte.MAX_VALUE, 55, 49, 57, 71, 71, 32, 14, 11, 83, 25, 52, 62, 42, 86, 70}))) == null) {
            return -1;
        }
        return Math.round(((r0.getIntExtra((String) pblk.a(16777217, 0, 0L, "9a4937", new byte[]{36, 102, 81, 72, 0}), -1) / r0.getIntExtra((String) pblk.a(16777217, 0, 0L, "b120ad", new byte[]{96, 48, 64, 72, 91}), -1)) * 100.0f) * 10.0f) / 10;
    }

    public final int f() {
        Intent registerReceiver = this.f21172b.registerReceiver(null, new IntentFilter((String) pblk.a(16777217, 0, 0L, "8c45bd", new byte[]{40, 111, 67, 83, 82, 122, 63, 12, 108, 107, 61, 100, 73, 85, 19, 114, 56, 86, 108, 106, 39, 47, 101, 96, 105, 71, 30, 112, 92, 90, 10, 73, 102, 111, 122, 86, 31})));
        if (registerReceiver == null) {
            return -1;
        }
        return registerReceiver.getIntExtra((String) pblk.a(16777217, 0, 0L, "ed9b54", new byte[]{100, 106, 95, 17, 13, 38, 98}), -1);
    }
}
