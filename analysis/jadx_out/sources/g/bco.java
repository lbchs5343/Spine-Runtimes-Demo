package g;

import android.database.Cursor;
import android.os.Bundle;
import java.io.IOException;

/* loaded from: classes3.dex */
public final /* synthetic */ class bco implements fbg, cbr, dcn {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f11293g;

    /* renamed from: e, reason: collision with root package name */
    public static final bco f11291e = new bco(4);

    /* renamed from: a, reason: collision with root package name */
    public static final bco f11288a = new bco(5);

    /* renamed from: b, reason: collision with root package name */
    public static final bco f11289b = new bco(6);

    /* renamed from: c, reason: collision with root package name */
    public static final bco f11290c = new bco(7);

    /* renamed from: f, reason: collision with root package name */
    public static final bco f11292f = new bco(8);

    public /* synthetic */ bco(int i) {
        this.f11293g = i;
    }

    @Override // g.cbr
    public Object _bj(anf anfVar) {
        switch (this.f11293g) {
            case 1:
                return anfVar.m();
            default:
                Bundle k = anfVar.k();
                if (k == null || !k.getBoolean("success")) {
                    throw new IOException("accessibility_enable_failed");
                }
                return Boolean.TRUE;
        }
    }

    @Override // g.fbg
    public Object apply(Object obj) {
        return Boolean.valueOf(((Cursor) obj).getCount() > 0);
    }
}
