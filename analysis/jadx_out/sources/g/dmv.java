package g;

import android.graphics.Matrix;
import android.graphics.Paint;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class dmv extends dtb {

    /* renamed from: a, reason: collision with root package name */
    public float f14443a;

    /* renamed from: b, reason: collision with root package name */
    public String f14444b;

    /* renamed from: c, reason: collision with root package name */
    public float f14445c;

    /* renamed from: d, reason: collision with root package name */
    public float f14446d;

    /* renamed from: e, reason: collision with root package name */
    public final Matrix f14447e;

    /* renamed from: f, reason: collision with root package name */
    public float f14448f;

    /* renamed from: g, reason: collision with root package name */
    public float f14449g;
    public final ArrayList h;
    public final Matrix i;
    public float j;
    public float k;

    public dmv() {
        this.f14447e = new Matrix();
        this.h = new ArrayList();
        this.j = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f14445c = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f14446d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f14448f = 1.0f;
        this.k = 1.0f;
        this.f14443a = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f14449g = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.i = new Matrix();
        this.f14444b = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public dmv(dmv dmvVar, tl tlVar) {
        aff affVar;
        this.f14447e = new Matrix();
        this.h = new ArrayList();
        this.j = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f14445c = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f14446d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f14448f = 1.0f;
        this.k = 1.0f;
        this.f14443a = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f14449g = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        Matrix matrix = new Matrix();
        this.i = matrix;
        this.f14444b = null;
        this.j = dmvVar.j;
        this.f14445c = dmvVar.f14445c;
        this.f14446d = dmvVar.f14446d;
        this.f14448f = dmvVar.f14448f;
        this.k = dmvVar.k;
        this.f14443a = dmvVar.f14443a;
        this.f14449g = dmvVar.f14449g;
        String str = dmvVar.f14444b;
        this.f14444b = str;
        if (str != null) {
            tlVar.put(str, this);
        }
        matrix.set(dmvVar.i);
        ArrayList arrayList = dmvVar.h;
        for (int i = 0; i < arrayList.size(); i++) {
            Object obj = arrayList.get(i);
            if (obj instanceof dmv) {
                this.h.add(new dmv((dmv) obj, tlVar));
            } else {
                if (obj instanceof atx) {
                    atx atxVar = (atx) obj;
                    atx atxVar2 = new atx(atxVar);
                    atxVar2.i = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    atxVar2.n = 1.0f;
                    atxVar2.f10839d = 1.0f;
                    atxVar2.l = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    atxVar2.m = 1.0f;
                    atxVar2.f10840e = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    atxVar2.h = Paint.Cap.BUTT;
                    atxVar2.k = Paint.Join.MITER;
                    atxVar2.f10841f = 4.0f;
                    atxVar2.f10842g = atxVar.f10842g;
                    atxVar2.i = atxVar.i;
                    atxVar2.n = atxVar.n;
                    atxVar2.j = atxVar.j;
                    atxVar2.f19919c = atxVar.f19919c;
                    atxVar2.f10839d = atxVar.f10839d;
                    atxVar2.l = atxVar.l;
                    atxVar2.m = atxVar.m;
                    atxVar2.f10840e = atxVar.f10840e;
                    atxVar2.h = atxVar.h;
                    atxVar2.k = atxVar.k;
                    atxVar2.f10841f = atxVar.f10841f;
                    affVar = atxVar2;
                } else {
                    if (!(obj instanceof aff)) {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    affVar = new aff((aff) obj);
                }
                this.h.add(affVar);
                Object obj2 = affVar.f19918b;
                if (obj2 != null) {
                    tlVar.put(obj2, affVar);
                }
            }
        }
    }

    public String getGroupName() {
        return this.f14444b;
    }

    public Matrix getLocalMatrix() {
        return this.i;
    }

    public float getPivotX() {
        return this.f14445c;
    }

    public float getPivotY() {
        return this.f14446d;
    }

    public float getRotation() {
        return this.j;
    }

    public float getScaleX() {
        return this.f14448f;
    }

    public float getScaleY() {
        return this.k;
    }

    public float getTranslateX() {
        return this.f14443a;
    }

    public float getTranslateY() {
        return this.f14449g;
    }

    public final void l() {
        Matrix matrix = this.i;
        matrix.reset();
        matrix.postTranslate(-this.f14445c, -this.f14446d);
        matrix.postScale(this.f14448f, this.k);
        matrix.postRotate(this.j, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        matrix.postTranslate(this.f14443a + this.f14445c, this.f14449g + this.f14446d);
    }

    @Override // g.dtb
    public final boolean o() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.h;
            if (i >= arrayList.size()) {
                return false;
            }
            if (((dtb) arrayList.get(i)).o()) {
                return true;
            }
            i++;
        }
    }

    @Override // g.dtb
    public final boolean p(int[] iArr) {
        int i = 0;
        boolean z = false;
        while (true) {
            ArrayList arrayList = this.h;
            if (i >= arrayList.size()) {
                return z;
            }
            z |= ((dtb) arrayList.get(i)).p(iArr);
            i++;
        }
    }

    public void setPivotX(float f2) {
        if (f2 != this.f14445c) {
            this.f14445c = f2;
            l();
        }
    }

    public void setPivotY(float f2) {
        if (f2 != this.f14446d) {
            this.f14446d = f2;
            l();
        }
    }

    public void setRotation(float f2) {
        if (f2 != this.j) {
            this.j = f2;
            l();
        }
    }

    public void setScaleX(float f2) {
        if (f2 != this.f14448f) {
            this.f14448f = f2;
            l();
        }
    }

    public void setScaleY(float f2) {
        if (f2 != this.k) {
            this.k = f2;
            l();
        }
    }

    public void setTranslateX(float f2) {
        if (f2 != this.f14443a) {
            this.f14443a = f2;
            l();
        }
    }

    public void setTranslateY(float f2) {
        if (f2 != this.f14449g) {
            this.f14449g = f2;
            l();
        }
    }
}
