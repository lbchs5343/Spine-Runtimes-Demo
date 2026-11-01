package g;

import android.animation.TimeInterpolator;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.appcompat.widget.SwitchCompat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class dfe extends Property {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14084a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ dfe(int i, Class cls, String str) {
        super(cls, str);
        this.f14084a = i;
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.f14084a) {
            case 0:
                return null;
            case 1:
                return null;
            case 2:
                return null;
            case 3:
                return null;
            case 4:
                return null;
            case 5:
                return Float.valueOf(((bgo) obj).l);
            case 6:
                return Float.valueOf(((bgo) obj).p);
            case 7:
                return Float.valueOf(((dpk) obj).l);
            case 8:
                return Float.valueOf(((dpk) obj).p);
            case 9:
                return Float.valueOf(((dzo) obj).r());
            case 10:
                return Float.valueOf(((cmj) obj).h);
            case 11:
                return Float.valueOf(((fxk) obj).n);
            case 12:
                return Float.valueOf(((SwitchCompat) obj).ad);
            case 13:
                return Float.valueOf(ebi.f15235a.aa((View) obj));
            default:
                return ((View) obj).getClipBounds();
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.f14084a) {
            case 0:
                bor borVar = (bor) obj;
                PointF pointF = (PointF) obj2;
                borVar.getClass();
                borVar.f11918c = Math.round(pointF.x);
                int round = Math.round(pointF.y);
                borVar.f11920e = round;
                int i = borVar.f11919d + 1;
                borVar.f11919d = i;
                if (i == borVar.f11922g) {
                    ebi.c(borVar.f11917b, borVar.f11918c, round, borVar.f11921f, borVar.f11916a);
                    borVar.f11919d = 0;
                    borVar.f11922g = 0;
                    break;
                }
                break;
            case 1:
                bor borVar2 = (bor) obj;
                PointF pointF2 = (PointF) obj2;
                borVar2.getClass();
                borVar2.f11921f = Math.round(pointF2.x);
                int round2 = Math.round(pointF2.y);
                borVar2.f11916a = round2;
                int i2 = borVar2.f11922g + 1;
                borVar2.f11922g = i2;
                if (borVar2.f11919d == i2) {
                    ebi.c(borVar2.f11917b, borVar2.f11918c, borVar2.f11920e, borVar2.f11921f, round2);
                    borVar2.f11919d = 0;
                    borVar2.f11922g = 0;
                    break;
                }
                break;
            case 2:
                View view = (View) obj;
                PointF pointF3 = (PointF) obj2;
                ebi.c(view, view.getLeft(), view.getTop(), Math.round(pointF3.x), Math.round(pointF3.y));
                break;
            case 3:
                View view2 = (View) obj;
                PointF pointF4 = (PointF) obj2;
                ebi.c(view2, Math.round(pointF4.x), Math.round(pointF4.y), view2.getRight(), view2.getBottom());
                break;
            case 4:
                View view3 = (View) obj;
                PointF pointF5 = (PointF) obj2;
                int round3 = Math.round(pointF5.x);
                int round4 = Math.round(pointF5.y);
                ebi.c(view3, round3, round4, view3.getWidth() + round3, view3.getHeight() + round4);
                break;
            case 5:
                bgo bgoVar = (bgo) obj;
                float floatValue = ((Float) obj2).floatValue();
                bgoVar.l = floatValue;
                int i3 = (int) (floatValue * 5400.0f);
                fca fcaVar = bgoVar.n;
                ArrayList arrayList = (ArrayList) bgoVar.f12848ab;
                agm agmVar = (agm) arrayList.get(0);
                float f2 = bgoVar.l * 1520.0f;
                agmVar.f10186d = (-20.0f) + f2;
                agmVar.f10188f = f2;
                for (int i4 = 0; i4 < 4; i4++) {
                    agmVar.f10188f = (fcaVar.getInterpolation(cgo.ac(i3, bgo.f11529d[i4], 667)) * 250.0f) + agmVar.f10188f;
                    agmVar.f10186d = (fcaVar.getInterpolation(cgo.ac(i3, bgo.j[i4], 667)) * 250.0f) + agmVar.f10186d;
                }
                float f3 = agmVar.f10186d;
                float f4 = agmVar.f10188f;
                agmVar.f10186d = (((f4 - f3) * bgoVar.p) + f3) / 360.0f;
                agmVar.f10188f = f4 / 360.0f;
                int i5 = 0;
                while (true) {
                    if (i5 < 4) {
                        float ac = cgo.ac(i3, bgo.k[i5], MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VIDEO_FRAME_META_CALLBACK);
                        if (ac <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || ac >= 1.0f) {
                            i5++;
                        } else {
                            int i6 = i5 + bgoVar.s;
                            int[] iArr = bgoVar.o.r;
                            int length = i6 % iArr.length;
                            int length2 = (length + 1) % iArr.length;
                            int i7 = iArr[length];
                            int i8 = iArr[length2];
                            ((agm) arrayList.get(0)).f10189g = gtp.a(fcaVar.getInterpolation(ac), Integer.valueOf(i7), Integer.valueOf(i8)).intValue();
                        }
                    }
                }
                ((fkr) bgoVar.aa).invalidateSelf();
                break;
            case 6:
                ((bgo) obj).p = ((Float) obj2).floatValue();
                break;
            case 7:
                dpk dpkVar = (dpk) obj;
                float floatValue2 = ((Float) obj2).floatValue();
                dpkVar.l = floatValue2;
                int i9 = (int) (floatValue2 * 6000.0f);
                TimeInterpolator timeInterpolator = dpkVar.n;
                ArrayList arrayList2 = (ArrayList) dpkVar.f12848ab;
                agm agmVar2 = (agm) arrayList2.get(0);
                float f5 = dpkVar.l * 1080.0f;
                int[] iArr2 = dpk.j;
                float f6 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                for (int i10 : iArr2) {
                    f6 += timeInterpolator.getInterpolation(cgo.ac(i9, i10, 500)) * 90.0f;
                }
                agmVar2.h = f5 + f6;
                float interpolation = timeInterpolator.getInterpolation(cgo.ac(i9, 0, 3000)) - timeInterpolator.getInterpolation(cgo.ac(i9, 3000, 3000));
                agmVar2.f10186d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                float[] fArr = dpk.k;
                float v = aky.v(fArr[0], fArr[1], interpolation);
                agmVar2.f10188f = v;
                float f7 = dpkVar.p;
                if (f7 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    agmVar2.f10188f = (1.0f - f7) * v;
                }
                int i11 = 0;
                while (true) {
                    if (i11 < iArr2.length) {
                        float ac2 = cgo.ac(i9, iArr2[i11], 100);
                        if (ac2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || ac2 > 1.0f) {
                            i11++;
                        } else {
                            int i12 = i11 + dpkVar.s;
                            int[] iArr3 = dpkVar.o.r;
                            int length3 = i12 % iArr3.length;
                            int length4 = (length3 + 1) % iArr3.length;
                            int i13 = iArr3[length3];
                            int i14 = iArr3[length4];
                            ((agm) arrayList2.get(0)).f10189g = gtp.a(timeInterpolator.getInterpolation(ac2), Integer.valueOf(i13), Integer.valueOf(i14)).intValue();
                        }
                    }
                }
                ((fkr) dpkVar.aa).invalidateSelf();
                break;
            case 8:
                ((dpk) obj).p = ((Float) obj2).floatValue();
                break;
            case 9:
                dzo dzoVar = (dzo) obj;
                float floatValue3 = ((Float) obj2).floatValue();
                if (dzoVar.k != floatValue3) {
                    dzoVar.k = floatValue3;
                    dzoVar.invalidateSelf();
                    break;
                }
                break;
            case 10:
                cmj cmjVar = (cmj) obj;
                float floatValue4 = ((Float) obj2).floatValue();
                cmjVar.h = floatValue4;
                ArrayList arrayList3 = (ArrayList) cmjVar.f12848ab;
                ((agm) arrayList3.get(0)).f10186d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                float ac3 = cgo.ac((int) (floatValue4 * 333.0f), 0, 667);
                agm agmVar3 = (agm) arrayList3.get(0);
                agm agmVar4 = (agm) arrayList3.get(1);
                fca fcaVar2 = cmjVar.i;
                float interpolation2 = fcaVar2.getInterpolation(ac3);
                agmVar4.f10186d = interpolation2;
                agmVar3.f10188f = interpolation2;
                agm agmVar5 = (agm) arrayList3.get(1);
                agm agmVar6 = (agm) arrayList3.get(2);
                float interpolation3 = fcaVar2.getInterpolation(ac3 + 0.49925038f);
                agmVar6.f10186d = interpolation3;
                agmVar5.f10188f = interpolation3;
                ((agm) arrayList3.get(2)).f10188f = 1.0f;
                if (cmjVar.m && ((agm) arrayList3.get(1)).f10188f < 1.0f) {
                    ((agm) arrayList3.get(2)).f10189g = ((agm) arrayList3.get(1)).f10189g;
                    ((agm) arrayList3.get(1)).f10189g = ((agm) arrayList3.get(0)).f10189g;
                    ((agm) arrayList3.get(0)).f10189g = cmjVar.j.r[cmjVar.k];
                    cmjVar.m = false;
                }
                ((fkr) cmjVar.aa).invalidateSelf();
                break;
            case 11:
                fxk fxkVar = (fxk) obj;
                float floatValue5 = ((Float) obj2).floatValue();
                fxkVar.n = floatValue5;
                int i15 = (int) (floatValue5 * 1800.0f);
                Interpolator[] interpolatorArr = fxkVar.l;
                ArrayList arrayList4 = (ArrayList) fxkVar.f12848ab;
                for (int i16 = 0; i16 < arrayList4.size(); i16++) {
                    agm agmVar7 = (agm) arrayList4.get(i16);
                    int[] iArr4 = fxk.h;
                    int i17 = i16 * 2;
                    int i18 = iArr4[i17];
                    int[] iArr5 = fxk.f17574d;
                    agmVar7.f10186d = dzm.ac(interpolatorArr[i17].getInterpolation(cgo.ac(i15, i18, iArr5[i17])), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
                    int i19 = i17 + 1;
                    agmVar7.f10188f = dzm.ac(interpolatorArr[i19].getInterpolation(cgo.ac(i15, iArr4[i19], iArr5[i19])), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
                }
                if (fxkVar.j) {
                    Iterator it = arrayList4.iterator();
                    while (it.hasNext()) {
                        ((agm) it.next()).f10189g = fxkVar.m.r[fxkVar.q];
                    }
                    fxkVar.j = false;
                }
                ((fkr) fxkVar.aa).invalidateSelf();
                break;
            case 12:
                ((SwitchCompat) obj).setThumbPosition(((Float) obj2).floatValue());
                break;
            case 13:
                ebi.f15235a.z((View) obj, ((Float) obj2).floatValue());
                break;
            default:
                ((View) obj).setClipBounds((Rect) obj2);
                break;
        }
    }
}
