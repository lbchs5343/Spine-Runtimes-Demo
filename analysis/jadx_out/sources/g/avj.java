package g;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class avj extends ViewGroup.MarginLayoutParams implements gth {
    public static final Parcelable.Creator<avj> CREATOR = new dud(14);

    /* renamed from: d, reason: collision with root package name */
    private float f10921d;
    private int dq;
    private int ia;
    private int iw;
    private int kk;
    private int mn;
    private boolean o;
    private float ox;
    private int p;
    private float s;

    public avj(int i, int i2) {
        super(new ViewGroup.LayoutParams(i, i2));
        this.dq = 1;
        this.f10921d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.ox = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.p = -1;
        this.s = -1.0f;
        this.iw = -1;
        this.mn = -1;
        this.ia = 16777215;
        this.kk = 16777215;
    }

    public avj(Parcel parcel) {
        super(0, 0);
        this.dq = 1;
        this.f10921d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.ox = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.p = -1;
        this.s = -1.0f;
        this.iw = -1;
        this.mn = -1;
        this.ia = 16777215;
        this.kk = 16777215;
        this.dq = parcel.readInt();
        this.f10921d = parcel.readFloat();
        this.ox = parcel.readFloat();
        this.p = parcel.readInt();
        this.s = parcel.readFloat();
        this.iw = parcel.readInt();
        this.mn = parcel.readInt();
        this.ia = parcel.readInt();
        this.kk = parcel.readInt();
        this.o = parcel.readByte() != 0;
        ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
        ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
        ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
        ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
        ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
        ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
    }

    public avj(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.dq = 1;
        this.f10921d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.ox = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.p = -1;
        this.s = -1.0f;
        this.iw = -1;
        this.mn = -1;
        this.ia = 16777215;
        this.kk = 16777215;
    }

    public avj(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.dq = 1;
        this.f10921d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.ox = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.p = -1;
        this.s = -1.0f;
        this.iw = -1;
        this.mn = -1;
        this.ia = 16777215;
        this.kk = 16777215;
    }

    public avj(avj avjVar) {
        super((ViewGroup.MarginLayoutParams) avjVar);
        this.dq = 1;
        this.f10921d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.ox = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.p = -1;
        this.s = -1.0f;
        this.iw = -1;
        this.mn = -1;
        this.ia = 16777215;
        this.kk = 16777215;
        this.dq = avjVar.dq;
        this.f10921d = avjVar.f10921d;
        this.ox = avjVar.ox;
        this.p = avjVar.p;
        this.s = avjVar.s;
        this.iw = avjVar.iw;
        this.mn = avjVar.mn;
        this.ia = avjVar.ia;
        this.kk = avjVar.kk;
        this.o = avjVar.o;
    }

    @Override // g.gth
    public int d() {
        return ((ViewGroup.MarginLayoutParams) this).height;
    }

    public void d(float f2) {
        this.ox = f2;
    }

    @Override // g.gth
    public void d(int i) {
        this.mn = i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // g.gth
    public int dq() {
        return ((ViewGroup.MarginLayoutParams) this).width;
    }

    public void dq(float f2) {
        this.f10921d = f2;
    }

    @Override // g.gth
    public void dq(int i) {
        this.iw = i;
    }

    @Override // g.gth
    public int f() {
        return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
    }

    @Override // g.gth
    public int ia() {
        return this.mn;
    }

    @Override // g.gth
    public float ig() {
        return this.s;
    }

    @Override // g.gth
    public int iw() {
        return this.p;
    }

    @Override // g.gth
    public int jy() {
        return ((ViewGroup.MarginLayoutParams) this).rightMargin;
    }

    @Override // g.gth
    public int kk() {
        return this.ia;
    }

    @Override // g.gth
    public int mn() {
        return this.iw;
    }

    @Override // g.gth
    public int mp() {
        return ((ViewGroup.MarginLayoutParams) this).leftMargin;
    }

    @Override // g.gth
    public boolean no() {
        return this.o;
    }

    @Override // g.gth
    public int o() {
        return this.kk;
    }

    @Override // g.gth
    public int ox() {
        return this.dq;
    }

    public void ox(float f2) {
        this.s = f2;
    }

    public void ox(int i) {
        this.dq = i;
    }

    @Override // g.gth
    public float p() {
        return this.f10921d;
    }

    public void p(int i) {
        this.p = i;
    }

    @Override // g.gth
    public int q() {
        return ((ViewGroup.MarginLayoutParams) this).topMargin;
    }

    @Override // g.gth
    public float s() {
        return this.ox;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.dq);
        parcel.writeFloat(this.f10921d);
        parcel.writeFloat(this.ox);
        parcel.writeInt(this.p);
        parcel.writeFloat(this.s);
        parcel.writeInt(this.iw);
        parcel.writeInt(this.mn);
        parcel.writeInt(this.ia);
        parcel.writeInt(this.kk);
        parcel.writeByte(this.o ? (byte) 1 : (byte) 0);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
        parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
    }
}
