package g;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

/* loaded from: classes.dex */
public abstract class biz {

    /* renamed from: c, reason: collision with root package name */
    public int f11680c;

    /* renamed from: d, reason: collision with root package name */
    public int f11681d;

    /* renamed from: e, reason: collision with root package name */
    public final dan f11682e;

    /* renamed from: f, reason: collision with root package name */
    public int f11683f;

    /* renamed from: g, reason: collision with root package name */
    public int f11684g;
    public int h;
    public final Rect i = new Rect();

    /* renamed from: b, reason: collision with root package name */
    public final Rect f11679b = new Rect();

    public biz(dbj dbjVar) {
        this.f11682e = dbjVar;
    }

    public abstract Bitmap a(Canvas canvas, Paint paint, int i, Bitmap bitmap, dcq dcqVar);
}
