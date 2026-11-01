package g;

import android.content.Context;
import android.graphics.Color;
import android.util.JsonReader;
import android.util.JsonToken;
import android.util.Log;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class cyl implements cce, hc {

    /* renamed from: c, reason: collision with root package name */
    public static volatile cyl f13763c;

    /* renamed from: d, reason: collision with root package name */
    public static final Object f13764d = new Object();

    /* renamed from: e, reason: collision with root package name */
    public int f13765e;

    public /* synthetic */ cyl(int i) {
        this.f13765e = i;
    }

    public cyl(int i, int i2) {
        this.f13765e = i;
    }

    public cyl(Throwable th) {
        this.f13765e = MediaPlayer.MEDIA_PLAYER_OPTION_TOKEN_URL_TEMPLATE;
        th.getMessage();
    }

    public static cyl f() {
        cyl cylVar;
        synchronized (f13764d) {
            try {
                if (f13763c == null) {
                    f13763c = new cyl(3);
                }
                cylVar = f13763c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cylVar;
    }

    public static String g(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        if (length >= 20) {
            sb.append(str.substring(0, 20));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    @Override // g.hc
    public int a(Context context, String str, boolean z) {
        return 0;
    }

    @Override // g.cce
    public Object an(JsonReader jsonReader, float f2) {
        int i;
        int i2;
        int i3;
        int argb;
        float d2;
        ArrayList arrayList = new ArrayList();
        int i4 = 1;
        boolean z = jsonReader.peek() == JsonToken.BEGIN_ARRAY;
        if (z) {
            jsonReader.beginArray();
        }
        while (jsonReader.hasNext()) {
            arrayList.add(Float.valueOf((float) jsonReader.nextDouble()));
        }
        int i5 = 2;
        if (arrayList.size() == 4 && ((Float) arrayList.get(0)).floatValue() == 1.0f) {
            arrayList.set(0, Float.valueOf(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
            arrayList.add(Float.valueOf(1.0f));
            arrayList.add(arrayList.get(1));
            arrayList.add(arrayList.get(2));
            arrayList.add(arrayList.get(3));
            this.f13765e = 2;
        }
        if (z) {
            jsonReader.endArray();
        }
        if (this.f13765e == -1) {
            this.f13765e = arrayList.size() / 4;
        }
        int i6 = this.f13765e;
        float[] fArr = new float[i6];
        int[] iArr = new int[i6];
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            i = this.f13765e * 4;
            if (i7 >= i) {
                break;
            }
            int i10 = i7 / 4;
            double floatValue = ((Float) arrayList.get(i7)).floatValue();
            int i11 = i7 % 4;
            if (i11 == 0) {
                if (i10 > 0) {
                    float f3 = (float) floatValue;
                    if (fArr[i10 - 1] >= f3) {
                        fArr[i10] = f3 + 0.01f;
                    }
                }
                fArr[i10] = (float) floatValue;
            } else if (i11 == i4) {
                i8 = (int) (floatValue * 255.0d);
            } else if (i11 == 2) {
                i9 = (int) (floatValue * 255.0d);
            } else if (i11 == 3) {
                iArr[i10] = Color.argb(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, i8, i9, (int) (floatValue * 255.0d));
            }
            i7++;
            i4 = 1;
        }
        fns fnsVar = new fns(fArr, iArr);
        if (arrayList.size() <= i) {
            return fnsVar;
        }
        int size = (arrayList.size() - i) / 2;
        float[] fArr2 = new float[size];
        float[] fArr3 = new float[size];
        int i12 = 0;
        while (i < arrayList.size()) {
            if (i % 2 == 0) {
                fArr2[i12] = ((Float) arrayList.get(i)).floatValue();
            } else {
                fArr3[i12] = ((Float) arrayList.get(i)).floatValue();
                i12++;
            }
            i++;
        }
        float[] fArr4 = fnsVar.f17105a;
        if (fArr4.length == 0) {
            fArr4 = fArr2;
        } else if (size != 0) {
            int length = fArr4.length + size;
            float[] fArr5 = new float[length];
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            for (int i16 = 0; i16 < length; i16++) {
                float f4 = i14 < fArr4.length ? fArr4[i14] : Float.NaN;
                float f5 = i15 < size ? fArr2[i15] : Float.NaN;
                if (Float.isNaN(f5) || f4 < f5) {
                    fArr5[i16] = f4;
                    i14++;
                } else if (Float.isNaN(f4) || f5 < f4) {
                    fArr5[i16] = f5;
                    i15++;
                } else {
                    fArr5[i16] = f4;
                    i14++;
                    i15++;
                    i13++;
                }
            }
            fArr4 = i13 == 0 ? fArr5 : Arrays.copyOf(fArr5, length - i13);
        }
        int length2 = fArr4.length;
        int[] iArr2 = new int[length2];
        int i17 = 0;
        while (i17 < length2) {
            float f6 = fArr4[i17];
            int binarySearch = Arrays.binarySearch(fArr, f6);
            int binarySearch2 = Arrays.binarySearch(fArr2, f6);
            if (binarySearch < 0 || binarySearch2 > 0) {
                if (binarySearch2 < 0) {
                    binarySearch2 = -(binarySearch2 + 1);
                }
                float f7 = fArr3[binarySearch2];
                if (i6 >= 2 && f6 != fArr[0]) {
                    for (int i18 = 1; i18 < i6; i18++) {
                        float f8 = fArr[i18];
                        if (f8 >= f6 || i18 == i6 - 1) {
                            int i19 = i18 - 1;
                            float f9 = fArr[i19];
                            float f10 = (f6 - f9) / (f8 - f9);
                            int i20 = iArr[i18];
                            int i21 = iArr[i19];
                            i2 = i6;
                            i3 = Color.argb((int) (f7 * 255.0f), aky.g(Color.red(i21), f10, Color.red(i20)), aky.g(Color.green(i21), f10, Color.green(i20)), aky.g(Color.blue(i21), f10, Color.blue(i20)));
                        }
                    }
                    throw new IllegalArgumentException("Unreachable code.");
                }
                i2 = i6;
                i3 = iArr[0];
                iArr2[i17] = i3;
            } else {
                int i22 = iArr[binarySearch];
                if (size >= i5 && f6 > fArr2[0]) {
                    for (int i23 = 1; i23 < size; i23++) {
                        float f11 = fArr2[i23];
                        if (f11 >= f6 || i23 == size - 1) {
                            if (f11 <= f6) {
                                d2 = fArr3[i23];
                            } else {
                                int i24 = i23 - 1;
                                float f12 = fArr2[i24];
                                d2 = din.d(fArr3[i24], fArr3[i23], (f6 - f12) / (f11 - f12));
                            }
                            argb = Color.argb((int) (d2 * 255.0f), Color.red(i22), Color.green(i22), Color.blue(i22));
                        }
                    }
                    throw new IllegalArgumentException("Unreachable code.");
                }
                argb = Color.argb((int) (fArr3[0] * 255.0f), Color.red(i22), Color.green(i22), Color.blue(i22));
                iArr2[i17] = argb;
                i2 = i6;
            }
            i17++;
            i6 = i2;
            i5 = 2;
        }
        return new fns(fArr4, iArr2);
    }

    @Override // g.hc
    public int b(Context context, String str) {
        return this.f13765e;
    }

    public int h() {
        int i = this.f13765e;
        if (i == 2) {
            return 10;
        }
        if (i == 5) {
            return 11;
        }
        if (i == 29) {
            return 12;
        }
        if (i != 42) {
            return i != 22 ? i != 23 ? 0 : 15 : C.ENCODING_PCM_32BIT;
        }
        return 16;
    }

    public void i(String str, String str2) {
        if (this.f13765e <= 6) {
            Log.e(str, str2);
        }
    }

    public void j(String str, String str2, Throwable th) {
        if (this.f13765e <= 6) {
            Log.e(str, str2, th);
        }
    }
}
