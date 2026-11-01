package g;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.view.InputDevice;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import j$.util.Objects;
import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes.dex */
public final class cuq {

    /* renamed from: b, reason: collision with root package name */
    public float f13546b;

    /* renamed from: d, reason: collision with root package name */
    public final Context f13548d;

    /* renamed from: f, reason: collision with root package name */
    public final awd f13550f;

    /* renamed from: g, reason: collision with root package name */
    public VelocityTracker f13551g;

    /* renamed from: c, reason: collision with root package name */
    public int f13547c = -1;

    /* renamed from: e, reason: collision with root package name */
    public int f13549e = -1;
    public int h = -1;

    /* renamed from: a, reason: collision with root package name */
    public final int[] f13545a = {he.UNDEFINED_ITEM_ID, 0};

    public cuq(Context context, awd awdVar) {
        this.f13548d = context;
        this.f13550f = awdVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:130:0x00bc, code lost:
    
        if (r5 >= 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0075, code lost:
    
        if (r14 >= 0) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0238  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(MotionEvent motionEvent, int i) {
        char c2;
        int i2;
        int i3;
        boolean z;
        float f2;
        float f3;
        long j;
        float f4;
        float sqrt;
        float f5;
        int source = motionEvent.getSource();
        int deviceId = motionEvent.getDeviceId();
        int i4 = this.f13549e;
        int[] iArr = this.f13545a;
        if (i4 == source && this.h == deviceId && this.f13547c == i) {
            z = false;
            c2 = 0;
        } else {
            Context context = this.f13548d;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            int deviceId2 = motionEvent.getDeviceId();
            int source2 = motionEvent.getSource();
            int i5 = Build.VERSION.SDK_INT;
            c2 = 0;
            if (i5 >= 34) {
                Method method = btu.f12200a;
                i2 = bpm.e(viewConfiguration, deviceId2, i, source2);
            } else {
                Method method2 = btu.f12200a;
                InputDevice device = InputDevice.getDevice(deviceId2);
                if (device != null && device.getMotionRange(i, source2) != null) {
                    Resources resources = context.getResources();
                    int identifier = (source2 == 4194304 && i == 26) ? resources.getIdentifier("config_viewMinRotaryEncoderFlingVelocity", "dimen", "android") : -1;
                    Objects.requireNonNull(viewConfiguration);
                    if (identifier == -1) {
                        i2 = viewConfiguration.getScaledMinimumFlingVelocity();
                    } else if (identifier != 0) {
                        i2 = resources.getDimensionPixelSize(identifier);
                    }
                }
                i2 = he.UNDEFINED_ITEM_ID;
            }
            iArr[0] = i2;
            int deviceId3 = motionEvent.getDeviceId();
            int source3 = motionEvent.getSource();
            if (i5 >= 34) {
                i3 = bpm.c(viewConfiguration, deviceId3, i, source3);
            } else {
                InputDevice device2 = InputDevice.getDevice(deviceId3);
                if (device2 != null && device2.getMotionRange(i, source3) != null) {
                    Resources resources2 = context.getResources();
                    int identifier2 = (source3 == 4194304 && i == 26) ? resources2.getIdentifier("config_viewMaxRotaryEncoderFlingVelocity", "dimen", "android") : -1;
                    Objects.requireNonNull(viewConfiguration);
                    if (identifier2 == -1) {
                        i3 = viewConfiguration.getScaledMaximumFlingVelocity();
                    } else if (identifier2 != 0) {
                        i3 = resources2.getDimensionPixelSize(identifier2);
                    }
                }
                i3 = Integer.MIN_VALUE;
            }
            iArr[1] = i3;
            this.f13549e = source;
            this.h = deviceId;
            this.f13547c = i;
            z = true;
        }
        if (iArr[c2] == Integer.MAX_VALUE) {
            VelocityTracker velocityTracker = this.f13551g;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f13551g = null;
                return;
            }
            return;
        }
        if (this.f13551g == null) {
            this.f13551g = VelocityTracker.obtain();
        }
        VelocityTracker velocityTracker2 = this.f13551g;
        Map map = cdk.f12690a;
        velocityTracker2.addMovement(motionEvent);
        int i6 = Build.VERSION.SDK_INT;
        float f6 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        int i7 = 20;
        if (i6 < 34 && motionEvent.getSource() == 4194304) {
            Map map2 = cdk.f12690a;
            if (!map2.containsKey(velocityTracker2)) {
                map2.put(velocityTracker2, new sb());
            }
            sb sbVar = (sb) map2.get(velocityTracker2);
            long[] jArr = sbVar.f19953d;
            long eventTime = motionEvent.getEventTime();
            if (sbVar.f19950a != 0 && eventTime - jArr[sbVar.f19951b] > 40) {
                sbVar.f19950a = 0;
                sbVar.f19954e = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }
            int i8 = (sbVar.f19951b + 1) % 20;
            sbVar.f19951b = i8;
            int i9 = sbVar.f19950a;
            if (i9 != 20) {
                sbVar.f19950a = i9 + 1;
            }
            sbVar.f19952c[i8] = motionEvent.getAxisValue(26);
            jArr[sbVar.f19951b] = eventTime;
        }
        velocityTracker2.computeCurrentVelocity(1000, Float.MAX_VALUE);
        sb sbVar2 = (sb) cdk.f12690a.get(velocityTracker2);
        if (sbVar2 != null) {
            float[] fArr = sbVar2.f19952c;
            long[] jArr2 = sbVar2.f19953d;
            int i10 = sbVar2.f19950a;
            if (i10 >= 2) {
                int i11 = sbVar2.f19951b;
                int i12 = ((i11 + 20) - (i10 - 1)) % 20;
                long j2 = jArr2[i11];
                while (true) {
                    j = jArr2[i12];
                    if (j2 - j <= 100) {
                        break;
                    }
                    sbVar2.f19950a--;
                    i12 = (i12 + 1) % 20;
                }
                int i13 = sbVar2.f19950a;
                if (i13 >= 2) {
                    if (i13 == 2) {
                        int i14 = (i12 + 1) % 20;
                        if (j != jArr2[i14]) {
                            sqrt = fArr[i14] / (r13 - j);
                            f4 = Float.MAX_VALUE;
                            f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                            f5 = sqrt * 1000;
                            sbVar2.f19954e = f5;
                            if (f5 < (-Math.abs(f4))) {
                                sbVar2.f19954e = -Math.abs(f4);
                            } else if (sbVar2.f19954e > Math.abs(f4)) {
                                sbVar2.f19954e = Math.abs(f4);
                            }
                        }
                    } else {
                        f4 = Float.MAX_VALUE;
                        int i15 = 0;
                        int i16 = 0;
                        float f7 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        while (true) {
                            if (i15 >= sbVar2.f19950a - 1) {
                                break;
                            }
                            int i17 = i15 + i12;
                            long j3 = jArr2[i17 % 20];
                            int i18 = (i17 + 1) % i7;
                            if (jArr2[i18] != j3) {
                                i16++;
                                float sqrt2 = (f7 < f6 ? -1.0f : 1.0f) * ((float) Math.sqrt(Math.abs(f7) * 2.0f));
                                float f8 = fArr[i18] / (jArr2[i18] - j3);
                                f7 += Math.abs(f8) * (f8 - sqrt2);
                                if (i16 == 1) {
                                    f7 *= 0.5f;
                                }
                            }
                            i15++;
                            f6 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                            i7 = 20;
                        }
                        f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        sqrt = (f7 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? -1.0f : 1.0f) * ((float) Math.sqrt(Math.abs(f7) * 2.0f));
                        f5 = sqrt * 1000;
                        sbVar2.f19954e = f5;
                        if (f5 < (-Math.abs(f4))) {
                        }
                    }
                }
            }
            f4 = Float.MAX_VALUE;
            sqrt = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            f5 = sqrt * 1000;
            sbVar2.f19954e = f5;
            if (f5 < (-Math.abs(f4))) {
            }
        } else {
            f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        if (Build.VERSION.SDK_INT >= 34) {
            f3 = bpm.f(velocityTracker2, i);
        } else if (i == 0) {
            f3 = velocityTracker2.getXVelocity();
        } else if (i == 1) {
            f3 = velocityTracker2.getYVelocity();
        } else {
            sb sbVar3 = (sb) cdk.f12690a.get(velocityTracker2);
            f3 = (sbVar3 == null || i != 26) ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : sbVar3.f19954e;
        }
        awd awdVar = this.f13550f;
        float b2 = awdVar.b() * f3;
        float signum = Math.signum(b2);
        if (z || (signum != Math.signum(this.f13546b) && signum != f2)) {
            awdVar.e();
        }
        if (Math.abs(b2) < iArr[0]) {
            return;
        }
        float max = Math.max(-r1, Math.min(b2, iArr[1]));
        this.f13546b = awdVar.c(max) ? max : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }
}
