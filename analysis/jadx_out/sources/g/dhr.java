package g;

import android.content.res.AssetManager;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.LongSparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class dhr extends grq {

    /* renamed from: a, reason: collision with root package name */
    public final gee f14195a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f14196b;

    /* renamed from: f, reason: collision with root package name */
    public final dph f14197f;

    /* renamed from: g, reason: collision with root package name */
    public final fts f14198g;
    public final Matrix h;
    public final dph i;
    public final LongSparseArray o;
    public final HashMap p;
    public final bsb q;
    public final dph r;
    public final RectF s;
    public final cgf t;
    public final bsb u;
    public final gee v;
    public final StringBuilder w;

    public dhr(fts ftsVar, cbc cbcVar) {
        super(ftsVar, cbcVar);
        cnc cncVar;
        cnc cncVar2;
        dlz dlzVar;
        dlz dlzVar2;
        this.w = new StringBuilder(2);
        this.s = new RectF();
        this.h = new Matrix();
        gee geeVar = new gee(1, 1);
        geeVar.setStyle(Paint.Style.FILL);
        this.f14195a = geeVar;
        gee geeVar2 = new gee(1, 2);
        geeVar2.setStyle(Paint.Style.STROKE);
        this.v = geeVar2;
        this.p = new HashMap();
        this.o = new LongSparseArray();
        this.f14196b = new ArrayList();
        this.f14198g = ftsVar;
        this.t = cbcVar.q;
        dph dphVar = new dph(2, (List) cbcVar.s.z);
        this.i = dphVar;
        dphVar.l(this);
        bg(dphVar);
        dpa dpaVar = cbcVar.x;
        if (dpaVar != null && (dlzVar2 = (dlz) dpaVar.f14569g) != null) {
            cej dq = dlzVar2.dq();
            this.r = (dph) dq;
            dq.l(this);
            bg(dq);
        }
        if (dpaVar != null && (dlzVar = (dlz) dpaVar.f14566d) != null) {
            cej dq2 = dlzVar.dq();
            this.f14197f = (dph) dq2;
            dq2.l(this);
            bg(dq2);
        }
        if (dpaVar != null && (cncVar2 = (cnc) dpaVar.f14567e) != null) {
            cej dq3 = cncVar2.dq();
            this.q = (bsb) dq3;
            dq3.l(this);
            bg(dq3);
        }
        if (dpaVar == null || (cncVar = (cnc) dpaVar.f14565c) == null) {
            return;
        }
        cej dq4 = cncVar.dq();
        this.u = (bsb) dq4;
        dq4.l(this);
        bg(dq4);
    }

    public static void x(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return;
        }
        canvas.drawText(str, 0, str.length(), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, paint);
    }

    public static void y(Canvas canvas, bil bilVar, int i, float f2) {
        PointF pointF = bilVar.f11655d;
        PointF pointF2 = bilVar.h;
        float h = ebx.h();
        float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f4 = (i * bilVar.f11658g * h) + (pointF == null ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : (bilVar.f11658g * 0.6f * h) + pointF.y);
        float f5 = pointF == null ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : pointF.x;
        if (pointF2 != null) {
            f3 = pointF2.x;
        }
        int i2 = fhi.f16793a[bilVar.f11654c.ordinal()];
        if (i2 == 1) {
            canvas.translate(f5, f4);
        } else if (i2 == 2) {
            canvas.translate((f5 + f3) - f2, f4);
        } else {
            if (i2 != 3) {
                return;
            }
            canvas.translate(((f3 / 2.0f) + f5) - (f2 / 2.0f), f4);
        }
    }

    public static void z(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    public final ayl aa(int i) {
        ArrayList arrayList = this.f14196b;
        for (int size = arrayList.size(); size < i; size++) {
            ayl aylVar = new ayl();
            aylVar.f11060a = "";
            aylVar.f11061b = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            arrayList.add(aylVar);
        }
        return (ayl) arrayList.get(i - 1);
    }

    public final List ab(String str, float f2, glv glvVar, float f3, float f4, boolean z) {
        float measureText;
        float f5 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        int i = 0;
        int i2 = 0;
        boolean z2 = false;
        float f6 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        int i3 = 0;
        float f7 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        for (int i4 = 0; i4 < str.length(); i4++) {
            char charAt = str.charAt(i4);
            if (z) {
                fki fkiVar = (fki) this.t.r.get(fki.f(charAt, glvVar.f18372b, glvVar.f18374d));
                if (fkiVar != null) {
                    measureText = (ebx.h() * ((float) fkiVar.f16925e) * f3) + f4;
                }
            } else {
                measureText = this.f14195a.measureText(str.substring(i4, i4 + 1)) + f4;
            }
            if (charAt == ' ') {
                z2 = true;
                f7 = measureText;
            } else if (z2) {
                i3 = i4;
                f6 = measureText;
                z2 = false;
            } else {
                f6 += measureText;
            }
            f5 += measureText;
            if (f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && f5 >= f2 && charAt != ' ') {
                i++;
                ayl aa = aa(i);
                if (i3 == i2) {
                    aa.f11060a = str.substring(i2, i4).trim();
                    aa.f11061b = (f5 - measureText) - ((r10.length() - r8.length()) * f7);
                    i2 = i4;
                    i3 = i2;
                    f5 = measureText;
                    f6 = f5;
                } else {
                    aa.f11060a = str.substring(i2, i3 - 1).trim();
                    aa.f11061b = ((f5 - f6) - ((r8.length() - r14.length()) * f7)) - f7;
                    f5 = f6;
                    i2 = i3;
                }
            }
        }
        if (f5 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            i++;
            ayl aa2 = aa(i);
            aa2.f11060a = str.substring(i2);
            aa2.f11061b = f5;
        }
        return this.f14196b.subList(0, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:198:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x035a  */
    @Override // g.grq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(Canvas canvas, Matrix matrix, int i) {
        bsb bsbVar;
        String str;
        String str2;
        String str3;
        Typeface typeface;
        Typeface typeface2;
        Typeface typeface3;
        glv glvVar;
        float f2;
        String sb;
        Canvas canvas2;
        float f3;
        int i2;
        List list;
        int i3;
        gee geeVar;
        List list2;
        gee geeVar2;
        dhr dhrVar = this;
        dhrVar.bj(i);
        bil bilVar = (bil) dhrVar.i.m();
        cgf cgfVar = dhrVar.t;
        glv glvVar2 = (glv) cgfVar.f12829g.get(bilVar.j);
        if (glvVar2 == null) {
            return;
        }
        String str4 = glvVar2.f18373c;
        String str5 = glvVar2.f18374d;
        String str6 = glvVar2.f18372b;
        canvas.save();
        canvas.concat(matrix);
        gee geeVar3 = dhrVar.f14195a;
        dph dphVar = dhrVar.r;
        if (dphVar != null) {
            geeVar3.setColor(((Integer) dphVar.m()).intValue());
        } else {
            geeVar3.setColor(bilVar.f11652a);
        }
        gee geeVar4 = dhrVar.v;
        dph dphVar2 = dhrVar.f14197f;
        if (dphVar2 != null) {
            geeVar4.setColor(((Integer) dphVar2.m()).intValue());
        } else {
            geeVar4.setColor(bilVar.i);
        }
        dph dphVar3 = dhrVar.ar.l;
        int intValue = ((dphVar3 == null ? 100 : ((Integer) dphVar3.m()).intValue()) * MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / 100;
        geeVar3.setAlpha(intValue);
        geeVar4.setAlpha(intValue);
        bsb bsbVar2 = dhrVar.q;
        if (bsbVar2 != null) {
            geeVar4.setStrokeWidth(((Float) bsbVar2.m()).floatValue());
        } else {
            geeVar4.setStrokeWidth(ebx.h() * bilVar.k);
        }
        fts ftsVar = dhrVar.f14198g;
        Map map = ftsVar.n;
        int i4 = -1;
        bsb bsbVar3 = dhrVar.u;
        gee geeVar5 = geeVar4;
        if (map == null && ftsVar.h == null && ftsVar.x.r.size() > 0) {
            float f4 = bilVar.l / 100.0f;
            ebx.i(matrix);
            List asList = Arrays.asList(bilVar.f11657f.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll("\n", "\r").split("\r"));
            int size = asList.size();
            float f5 = bilVar.f11656e / 10.0f;
            if (bsbVar3 != null) {
                f5 += ((Float) bsbVar3.m()).floatValue();
            }
            float f6 = f5;
            int i5 = 0;
            while (i5 < size) {
                String str7 = (String) asList.get(i5);
                PointF pointF = bilVar.h;
                float f7 = f4;
                int i6 = i5;
                List ab2 = dhrVar.ab(str7, pointF == null ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : pointF.x, glvVar2, f7, f6, true);
                int i7 = 0;
                while (i7 < ab2.size()) {
                    ayl aylVar = (ayl) ab2.get(i7);
                    List list3 = ab2;
                    int i8 = i4 + 1;
                    canvas.save();
                    int i9 = i7;
                    y(canvas, bilVar, i8, aylVar.f11061b);
                    String str8 = aylVar.f11060a;
                    i4 = i8;
                    int i10 = 0;
                    while (i10 < str8.length()) {
                        String str9 = str8;
                        fki fkiVar = (fki) cgfVar.r.get(fki.f(str8.charAt(i10), str6, str5));
                        if (fkiVar != null) {
                            HashMap hashMap = dhrVar.p;
                            if (hashMap.containsKey(fkiVar)) {
                                list2 = (List) hashMap.get(fkiVar);
                                f3 = f6;
                                i2 = i10;
                                list = asList;
                                i3 = size;
                            } else {
                                f3 = f6;
                                ArrayList arrayList = fkiVar.f16923c;
                                i2 = i10;
                                int size2 = arrayList.size();
                                list = asList;
                                ArrayList arrayList2 = new ArrayList(size2);
                                i3 = size;
                                int i11 = 0;
                                while (i11 < size2) {
                                    arrayList2.add(new bl(ftsVar, dhrVar, (ewz) arrayList.get(i11), cgfVar));
                                    i11++;
                                    size2 = size2;
                                    arrayList = arrayList;
                                }
                                hashMap.put(fkiVar, arrayList2);
                                list2 = arrayList2;
                            }
                            int i12 = 0;
                            while (i12 < list2.size()) {
                                Path p = ((bl) list2.get(i12)).p();
                                p.computeBounds(dhrVar.s, false);
                                Matrix matrix2 = dhrVar.h;
                                matrix2.reset();
                                List list4 = list2;
                                matrix2.preTranslate(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, (-bilVar.m) * ebx.h());
                                matrix2.preScale(f7, f7);
                                p.transform(matrix2);
                                if (bilVar.f11653b) {
                                    z(p, geeVar3, canvas);
                                    geeVar2 = geeVar5;
                                    z(p, geeVar2, canvas);
                                } else {
                                    geeVar2 = geeVar5;
                                    z(p, geeVar2, canvas);
                                    z(p, geeVar3, canvas);
                                }
                                i12++;
                                geeVar5 = geeVar2;
                                list2 = list4;
                            }
                            geeVar = geeVar5;
                            canvas.translate((ebx.h() * ((float) fkiVar.f16925e) * f7) + f3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        } else {
                            f3 = f6;
                            i2 = i10;
                            list = asList;
                            i3 = size;
                            geeVar = geeVar5;
                        }
                        i10 = i2 + 1;
                        geeVar5 = geeVar;
                        str8 = str9;
                        f6 = f3;
                        asList = list;
                        size = i3;
                    }
                    canvas.restore();
                    i7 = i9 + 1;
                    ab2 = list3;
                    asList = asList;
                }
                i5 = i6 + 1;
                f4 = f7;
                asList = asList;
            }
            canvas2 = canvas;
        } else {
            Map map2 = ftsVar.n;
            if (map2 != null) {
                if (map2.containsKey(str6)) {
                    typeface = (Typeface) map2.get(str6);
                } else if (map2.containsKey(str4)) {
                    typeface = (Typeface) map2.get(str4);
                } else {
                    bsbVar = bsbVar3;
                    String i13 = awf.i(str6, "-", str5);
                    if (map2.containsKey(i13)) {
                        typeface = (Typeface) map2.get(i13);
                        str = "\n";
                        str2 = "\u0003";
                        str3 = "\r";
                        if (typeface == null) {
                            typeface = glvVar2.f18371a;
                        }
                        if (typeface != null) {
                            String str10 = bilVar.f11657f;
                            dpc dpcVar = ftsVar.h;
                            if (dpcVar != null) {
                                String str11 = dhrVar.au.u;
                                HashMap hashMap2 = dpcVar.f14573c;
                                boolean z = dpcVar.f14575e;
                                if (z && hashMap2.containsKey(str10)) {
                                    str10 = (String) hashMap2.get(str10);
                                } else {
                                    String b2 = dpcVar.b(str10);
                                    if (z) {
                                        hashMap2.put(str10, b2);
                                    }
                                    str10 = b2;
                                }
                            }
                            geeVar3.setTypeface(typeface);
                            float f8 = bilVar.l;
                            geeVar3.setTextSize(ebx.h() * f8);
                            geeVar5.setTypeface(geeVar3.getTypeface());
                            geeVar5.setTextSize(geeVar3.getTextSize());
                            float f9 = bilVar.f11656e / 10.0f;
                            if (bsbVar != null) {
                                f9 += ((Float) bsbVar.m()).floatValue();
                            }
                            float h = ((ebx.h() * f9) * f8) / 100.0f;
                            String str12 = str3;
                            List asList2 = Arrays.asList(str10.replaceAll("\r\n", str12).replaceAll(str2, str12).replaceAll(str, str12).split(str12));
                            int size3 = asList2.size();
                            int i14 = 0;
                            while (i14 < size3) {
                                String str13 = (String) asList2.get(i14);
                                PointF pointF2 = bilVar.h;
                                List ab3 = dhrVar.ab(str13, pointF2 == null ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : pointF2.x, glvVar2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, h, false);
                                int i15 = 0;
                                while (i15 < ab3.size()) {
                                    ayl aylVar2 = (ayl) ab3.get(i15);
                                    int i16 = i4 + 1;
                                    canvas.save();
                                    y(canvas, bilVar, i16, aylVar2.f11061b);
                                    String str14 = aylVar2.f11060a;
                                    int i17 = 0;
                                    while (i17 < str14.length()) {
                                        int codePointAt = str14.codePointAt(i17);
                                        List list5 = ab3;
                                        int i18 = i15;
                                        int charCount = Character.charCount(codePointAt) + i17;
                                        while (true) {
                                            if (charCount >= str14.length()) {
                                                glvVar = glvVar2;
                                                break;
                                            }
                                            int codePointAt2 = str14.codePointAt(charCount);
                                            glvVar = glvVar2;
                                            if (Character.getType(codePointAt2) != 16 && Character.getType(codePointAt2) != 27 && Character.getType(codePointAt2) != 6 && Character.getType(codePointAt2) != 28 && Character.getType(codePointAt2) != 8 && Character.getType(codePointAt2) != 19) {
                                                break;
                                            }
                                            charCount += Character.charCount(codePointAt2);
                                            codePointAt = (codePointAt * 31) + codePointAt2;
                                            glvVar2 = glvVar;
                                        }
                                        long j = codePointAt;
                                        LongSparseArray longSparseArray = dhrVar.o;
                                        if (longSparseArray.indexOfKey(j) >= 0) {
                                            sb = (String) longSparseArray.get(j);
                                            f2 = h;
                                        } else {
                                            f2 = h;
                                            StringBuilder sb2 = dhrVar.w;
                                            sb2.setLength(0);
                                            int i19 = i17;
                                            while (i19 < charCount) {
                                                int i20 = charCount;
                                                int codePointAt3 = str14.codePointAt(i19);
                                                sb2.appendCodePoint(codePointAt3);
                                                i19 += Character.charCount(codePointAt3);
                                                charCount = i20;
                                            }
                                            sb = sb2.toString();
                                            longSparseArray.put(j, sb);
                                        }
                                        i17 += sb.length();
                                        if (bilVar.f11653b) {
                                            x(sb, geeVar3, canvas);
                                            x(sb, geeVar5, canvas);
                                        } else {
                                            x(sb, geeVar5, canvas);
                                            x(sb, geeVar3, canvas);
                                        }
                                        canvas.translate(geeVar3.measureText(sb) + f2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                                        dhrVar = this;
                                        ab3 = list5;
                                        i15 = i18;
                                        glvVar2 = glvVar;
                                        h = f2;
                                    }
                                    canvas.restore();
                                    i15++;
                                    dhrVar = this;
                                    ab3 = ab3;
                                    i4 = i16;
                                }
                                i14++;
                                dhrVar = this;
                            }
                        }
                        canvas2 = canvas;
                    }
                }
                bsbVar = bsbVar3;
                str = "\n";
                str2 = "\u0003";
                str3 = "\r";
                if (typeface == null) {
                }
                if (typeface != null) {
                }
                canvas2 = canvas;
            } else {
                bsbVar = bsbVar3;
            }
            daw au = ftsVar.au();
            if (au != null) {
                gtb gtbVar = (gtb) au.f13886e;
                gtbVar.f18714d = str6;
                gtbVar.f18712b = str5;
                HashMap hashMap3 = (HashMap) au.f13887f;
                Typeface typeface4 = (Typeface) hashMap3.get(gtbVar);
                if (typeface4 != null) {
                    str2 = "\u0003";
                    str3 = "\r";
                    typeface = typeface4;
                    str = "\n";
                } else {
                    str = "\n";
                    AssetManager assetManager = (AssetManager) au.f13883b;
                    str2 = "\u0003";
                    HashMap hashMap4 = (HashMap) au.f13882a;
                    Typeface typeface5 = (Typeface) hashMap4.get(str6);
                    if (typeface5 != null) {
                        typeface = typeface5;
                        str3 = "\r";
                    } else {
                        str3 = "\r";
                        fav favVar = (fav) au.f13885d;
                        if (favVar != null) {
                            Typeface dq = favVar.dq(str6, str5, str4);
                            if (dq == null) {
                                dq = ((fav) au.f13885d).dq(str6);
                            }
                            typeface2 = dq;
                        } else {
                            typeface2 = null;
                        }
                        fav favVar2 = (fav) au.f13885d;
                        if (favVar2 != null && typeface2 == null) {
                            String d2 = favVar2.d(str6, str5, str4);
                            if (d2 == null) {
                                d2 = ((fav) au.f13885d).d(str6);
                            }
                            if (d2 != null) {
                                try {
                                    typeface3 = Typeface.createFromAsset(assetManager, d2);
                                } catch (Throwable unused) {
                                    typeface3 = Typeface.DEFAULT;
                                }
                                typeface = glvVar2.f18371a;
                                if (typeface == null) {
                                    if (typeface3 == null) {
                                        try {
                                            typeface = Typeface.createFromAsset(assetManager, "fonts/" + str6 + ((String) au.f13888g));
                                        } catch (Throwable unused2) {
                                            typeface = Typeface.DEFAULT;
                                        }
                                    } else {
                                        typeface = typeface3;
                                    }
                                    hashMap4.put(str6, typeface);
                                }
                            }
                        }
                        typeface3 = typeface2;
                        typeface = glvVar2.f18371a;
                        if (typeface == null) {
                        }
                    }
                    boolean contains = str5.contains("Italic");
                    boolean contains2 = str5.contains("Bold");
                    int i21 = (contains && contains2) ? 3 : contains ? 2 : contains2 ? 1 : 0;
                    if (typeface.getStyle() != i21) {
                        typeface = Typeface.create(typeface, i21);
                    }
                    hashMap3.put(gtbVar, typeface);
                }
            } else {
                str = "\n";
                str2 = "\u0003";
                str3 = "\r";
                typeface = null;
            }
            if (typeface == null) {
            }
            if (typeface != null) {
            }
            canvas2 = canvas;
        }
        canvas2.restore();
    }

    @Override // g.grq, g.glt
    public final void m(RectF rectF, Matrix matrix, boolean z) {
        super.m(rectF, matrix, z);
        cgf cgfVar = this.t;
        rectF.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, cgfVar.o.width(), cgfVar.o.height());
    }
}
