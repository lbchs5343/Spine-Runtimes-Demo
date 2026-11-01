package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.os.HandlerThread;
import android.util.Log;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.agd;
import g.bpn;
import g.cqx;
import g.edt;
import g.ti;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* loaded from: classes3.dex */
public final class zzccd extends Thread implements SurfaceTexture.OnFrameAvailableListener, cqx {

    /* renamed from: a, reason: collision with root package name */
    public static final float[] f5166a = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};
    public int aa;

    /* renamed from: ab, reason: collision with root package name */
    public final float[] f5167ab;

    /* renamed from: b, reason: collision with root package name */
    public final float[] f5168b;

    /* renamed from: c, reason: collision with root package name */
    public int f5169c;

    /* renamed from: d, reason: collision with root package name */
    public final CountDownLatch f5170d;

    /* renamed from: e, reason: collision with root package name */
    public final float[] f5171e;

    /* renamed from: f, reason: collision with root package name */
    public EGLSurface f5172f;

    /* renamed from: g, reason: collision with root package name */
    public EGL10 f5173g;
    public SurfaceTexture h;
    public float i;
    public final float[] j;
    public int k;
    public float l;
    public final Object m;
    public final FloatBuffer n;
    public final float[] o;
    public final float[] p;
    public int q;
    public final bpn r;
    public volatile boolean s;
    public EGLContext t;
    public float u;
    public final float[] v;
    public SurfaceTexture w;
    public EGLDisplay x;
    public volatile boolean y;
    public int z;

    public zzccd(Context context) {
        super("SphericalVideoProcessor");
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(48).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.n = asFloatBuffer;
        asFloatBuffer.put(f5166a).position(0);
        this.v = new float[9];
        this.j = new float[9];
        this.o = new float[9];
        this.p = new float[9];
        this.f5167ab = new float[9];
        this.f5171e = new float[9];
        this.f5168b = new float[9];
        this.u = Float.NaN;
        bpn bpnVar = new bpn(context);
        this.r = bpnVar;
        bpnVar.f11959a = this;
        this.f5170d = new CountDownLatch(1);
        this.m = new Object();
    }

    public static final void ac(float[] fArr, float f2) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        double d2 = f2;
        fArr[4] = (float) Math.cos(d2);
        fArr[5] = (float) (-Math.sin(d2));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(d2);
        fArr[8] = (float) Math.cos(d2);
    }

    public static final void ad(float[] fArr, float f2) {
        double d2 = f2;
        fArr[0] = (float) Math.cos(d2);
        fArr[1] = (float) (-Math.sin(d2));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(d2);
        fArr[4] = (float) Math.cos(d2);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    public static final int ae(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        af("createShader");
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            af("shaderSource");
            GLES20.glCompileShader(glCreateShader);
            af("compileShader");
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            af("getShaderiv");
            if (iArr[0] == 0) {
                Log.e("SphericalVideoRenderer", "Could not compile shader " + i + ":");
                Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                af("deleteShader");
                return 0;
            }
        }
        return glCreateShader;
    }

    public static final void af(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            Log.e("SphericalVideoRenderer", str + ": glError " + glGetError);
        }
    }

    public static final void ag(float[] fArr, float[] fArr2, float[] fArr3) {
        float f2 = fArr2[0] * fArr3[0];
        float f3 = fArr2[1];
        float f4 = fArr3[3];
        float f5 = fArr2[2];
        float f6 = fArr3[6];
        fArr[0] = f2 + (f3 * f4) + (f5 * f6);
        float f7 = fArr2[0];
        float f8 = fArr3[1] * f7;
        float f9 = fArr3[4];
        float f10 = fArr3[7];
        fArr[1] = f8 + (f3 * f9) + (f5 * f10);
        float f11 = f7 * fArr3[2];
        float f12 = fArr2[1];
        float f13 = fArr3[5];
        float f14 = fArr3[8];
        fArr[2] = f11 + (f12 * f13) + (f5 * f14);
        float f15 = fArr2[3];
        float f16 = fArr3[0];
        float f17 = fArr2[4];
        float f18 = fArr2[5];
        fArr[3] = (f15 * f16) + (f4 * f17) + (f18 * f6);
        float f19 = fArr2[3];
        float f20 = fArr3[1];
        fArr[4] = (f19 * f20) + (f17 * f9) + (f18 * f10);
        float f21 = fArr3[2];
        fArr[5] = (f19 * f21) + (fArr2[4] * f13) + (f18 * f14);
        float f22 = fArr2[6] * f16;
        float f23 = fArr2[7];
        float f24 = fArr3[3] * f23;
        float f25 = fArr2[8];
        fArr[6] = f22 + f24 + (f6 * f25);
        float f26 = fArr2[6];
        float f27 = f10 * f25;
        fArr[7] = f27 + (f23 * fArr3[4]) + (f20 * f26);
        fArr[8] = (f26 * f21) + (fArr2[7] * fArr3[5]) + (f25 * f14);
    }

    public final void ah() {
        EGLSurface eGLSurface;
        EGLSurface eGLSurface2 = this.f5172f;
        if (eGLSurface2 != null && eGLSurface2 != (eGLSurface = EGL10.EGL_NO_SURFACE)) {
            this.f5173g.eglMakeCurrent(this.x, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            this.f5173g.eglDestroySurface(this.x, this.f5172f);
            this.f5172f = null;
        }
        EGLContext eGLContext = this.t;
        if (eGLContext != null) {
            this.f5173g.eglDestroyContext(this.x, eGLContext);
            this.t = null;
        }
        EGLDisplay eGLDisplay = this.x;
        if (eGLDisplay != null) {
            this.f5173g.eglTerminate(eGLDisplay);
            this.x = null;
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.q++;
        synchronized (this.m) {
            this.m.notifyAll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x01b5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00a3  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        boolean z;
        int ae;
        int glCreateProgram;
        if (this.h == null) {
            agd.d("SphericalVideoProcessor started with no output texture.");
            this.f5170d.countDown();
            return;
        }
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.f5173g = egl10;
        EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.x = eglGetDisplay;
        if (eglGetDisplay != EGL10.EGL_NO_DISPLAY && this.f5173g.eglInitialize(eglGetDisplay, new int[2])) {
            int[] iArr = new int[1];
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            EGLConfig eGLConfig = (this.f5173g.eglChooseConfig(this.x, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12325, 16, 12344}, eGLConfigArr, 1, iArr) && iArr[0] > 0) ? eGLConfigArr[0] : null;
            if (eGLConfig != null) {
                EGL10 egl102 = this.f5173g;
                EGLDisplay eGLDisplay = this.x;
                EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
                EGLContext eglCreateContext = egl102.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, new int[]{12440, 2, 12344});
                this.t = eglCreateContext;
                if (eglCreateContext != null && eglCreateContext != eGLContext) {
                    EGLSurface eglCreateWindowSurface = this.f5173g.eglCreateWindowSurface(this.x, eGLConfig, this.h, null);
                    this.f5172f = eglCreateWindowSurface;
                    if (eglCreateWindowSurface != null && eglCreateWindowSurface != EGL10.EGL_NO_SURFACE && this.f5173g.eglMakeCurrent(this.x, eglCreateWindowSurface, eglCreateWindowSurface, this.t)) {
                        z = true;
                        zzbce zzbceVar = zzbcn.zzbq;
                        edt edtVar = edt.f15376a;
                        ae = ae(35633, ((String) edtVar.f15379d.zza(zzbceVar)).equals(zzbceVar.zzk()) ? (String) edtVar.f15379d.zza(zzbceVar) : "attribute highp vec3 aPosition;varying vec3 pos;void main() {  gl_Position = vec4(aPosition, 1.0);  pos = aPosition;}");
                        if (ae != 0) {
                            zzbce zzbceVar2 = zzbcn.zzbr;
                            int ae2 = ae(35632, !((String) edtVar.f15379d.zza(zzbceVar2)).equals(zzbceVar2.zzk()) ? (String) edtVar.f15379d.zza(zzbceVar2) : "#extension GL_OES_EGL_image_external : require\n#define INV_PI 0.3183\nprecision highp float;varying vec3 pos;uniform samplerExternalOES uSplr;uniform mat3 uVMat;uniform float uFOVx;uniform float uFOVy;void main() {  vec3 ray = vec3(pos.x * tan(uFOVx), pos.y * tan(uFOVy), -1);  ray = (uVMat * ray).xyz;  ray = normalize(ray);  vec2 texCrd = vec2(    0.5 + atan(ray.x, - ray.z) * INV_PI * 0.5, acos(ray.y) * INV_PI);  gl_FragColor = vec4(texture2D(uSplr, texCrd).xyz, 1.0);}");
                            if (ae2 != 0) {
                                glCreateProgram = GLES20.glCreateProgram();
                                af("createProgram");
                                if (glCreateProgram != 0) {
                                    GLES20.glAttachShader(glCreateProgram, ae);
                                    af("attachShader");
                                    GLES20.glAttachShader(glCreateProgram, ae2);
                                    af("attachShader");
                                    GLES20.glLinkProgram(glCreateProgram);
                                    af("linkProgram");
                                    int[] iArr2 = new int[1];
                                    GLES20.glGetProgramiv(glCreateProgram, 35714, iArr2, 0);
                                    af("getProgramiv");
                                    if (iArr2[0] != 1) {
                                        Log.e("SphericalVideoRenderer", "Could not link program: ");
                                        Log.e("SphericalVideoRenderer", GLES20.glGetProgramInfoLog(glCreateProgram));
                                        GLES20.glDeleteProgram(glCreateProgram);
                                        af("deleteProgram");
                                    } else {
                                        GLES20.glValidateProgram(glCreateProgram);
                                        af("validateProgram");
                                    }
                                }
                                this.f5169c = glCreateProgram;
                                GLES20.glUseProgram(glCreateProgram);
                                af("useProgram");
                                int glGetAttribLocation = GLES20.glGetAttribLocation(this.f5169c, "aPosition");
                                GLES20.glVertexAttribPointer(glGetAttribLocation, 3, 5126, false, 12, (Buffer) this.n);
                                af("vertexAttribPointer");
                                GLES20.glEnableVertexAttribArray(glGetAttribLocation);
                                af("enableVertexAttribArray");
                                int[] iArr3 = new int[1];
                                GLES20.glGenTextures(1, iArr3, 0);
                                af("genTextures");
                                int i = iArr3[0];
                                GLES20.glBindTexture(36197, i);
                                af("bindTextures");
                                GLES20.glTexParameteri(36197, 10240, 9729);
                                af("texParameteri");
                                GLES20.glTexParameteri(36197, 10241, 9729);
                                af("texParameteri");
                                GLES20.glTexParameteri(36197, 10242, 33071);
                                af("texParameteri");
                                GLES20.glTexParameteri(36197, 10243, 33071);
                                af("texParameteri");
                                int glGetUniformLocation = GLES20.glGetUniformLocation(this.f5169c, "uVMat");
                                this.z = glGetUniformLocation;
                                GLES20.glUniformMatrix3fv(glGetUniformLocation, 1, false, new float[]{1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f}, 0);
                                int i2 = this.f5169c;
                                if (z || i2 == 0) {
                                    String concat = "EGL initialization failed: ".concat(String.valueOf(GLUtils.getEGLErrorString(this.f5173g.eglGetError())));
                                    agd.d(concat);
                                    ti.f20033a.f20034ab.zzw(new Throwable(concat), "SphericalVideoProcessor.run.1");
                                    ah();
                                    this.f5170d.countDown();
                                }
                                SurfaceTexture surfaceTexture = new SurfaceTexture(i);
                                this.w = surfaceTexture;
                                surfaceTexture.setOnFrameAvailableListener(this);
                                this.f5170d.countDown();
                                bpn bpnVar = this.r;
                                SensorManager sensorManager = bpnVar.f11962d;
                                if (bpnVar.h == null) {
                                    Sensor defaultSensor = sensorManager.getDefaultSensor(11);
                                    if (defaultSensor == null) {
                                        agd.d("No Sensor of TYPE_ROTATION_VECTOR");
                                    } else {
                                        HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
                                        handlerThread.start();
                                        zzftd zzftdVar = new zzftd(handlerThread.getLooper());
                                        bpnVar.h = zzftdVar;
                                        if (!sensorManager.registerListener(bpnVar, defaultSensor, 0, zzftdVar)) {
                                            agd.d("SensorManager.registerListener failed.");
                                            bpnVar.i();
                                        }
                                    }
                                }
                                try {
                                    try {
                                        try {
                                            this.s = true;
                                            while (!this.y) {
                                                while (this.q > 0) {
                                                    this.w.updateTexImage();
                                                    this.q--;
                                                }
                                                if (this.r.j(this.v)) {
                                                    if (Float.isNaN(this.u)) {
                                                        float[] fArr = this.v;
                                                        float[] fArr2 = {TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT};
                                                        float f2 = fArr[0];
                                                        float f3 = fArr2[0];
                                                        float f4 = fArr[1];
                                                        float f5 = fArr2[1];
                                                        float[] fArr3 = {(fArr[2] * TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) + (f4 * f5) + (f2 * f3), (fArr[5] * TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) + (fArr[4] * f5) + (fArr[3] * f3), (fArr[8] * TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) + (fArr[7] * f5) + (fArr[6] * f3)};
                                                        this.u = -(((float) Math.atan2(fArr3[1], fArr3[0])) - 1.5707964f);
                                                    }
                                                    ad(this.f5171e, this.u + this.i);
                                                } else {
                                                    ac(this.v, -1.5707964f);
                                                    ad(this.f5171e, this.i);
                                                }
                                                ac(this.j, 1.5707964f);
                                                ag(this.o, this.f5171e, this.j);
                                                ag(this.p, this.v, this.o);
                                                ac(this.f5167ab, this.l);
                                                ag(this.f5168b, this.f5167ab, this.p);
                                                GLES20.glUniformMatrix3fv(this.z, 1, false, this.f5168b, 0);
                                                GLES20.glDrawArrays(5, 0, 4);
                                                af("drawArrays");
                                                GLES20.glFinish();
                                                this.f5173g.eglSwapBuffers(this.x, this.f5172f);
                                                if (this.s) {
                                                    GLES20.glViewport(0, 0, this.aa, this.k);
                                                    af("viewport");
                                                    int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.f5169c, "uFOVx");
                                                    int glGetUniformLocation3 = GLES20.glGetUniformLocation(this.f5169c, "uFOVy");
                                                    int i3 = this.aa;
                                                    int i4 = this.k;
                                                    if (i3 > i4) {
                                                        GLES20.glUniform1f(glGetUniformLocation2, 0.87266463f);
                                                        GLES20.glUniform1f(glGetUniformLocation3, (this.k * 0.87266463f) / this.aa);
                                                    } else {
                                                        GLES20.glUniform1f(glGetUniformLocation2, (i3 * 0.87266463f) / i4);
                                                        GLES20.glUniform1f(glGetUniformLocation3, 0.87266463f);
                                                    }
                                                    this.s = false;
                                                }
                                                try {
                                                    synchronized (this.m) {
                                                        try {
                                                            if (!this.y && !this.s && this.q == 0) {
                                                                this.m.wait();
                                                            }
                                                        } catch (Throwable th) {
                                                            throw th;
                                                        }
                                                    }
                                                } catch (InterruptedException unused) {
                                                }
                                            }
                                        } catch (Throwable th2) {
                                            this.r.i();
                                            this.w.setOnFrameAvailableListener(null);
                                            this.w = null;
                                            ah();
                                            throw th2;
                                        }
                                    } catch (IllegalStateException unused2) {
                                        agd.b("SphericalVideoProcessor halted unexpectedly.");
                                    }
                                } catch (Throwable th3) {
                                    agd.f("SphericalVideoProcessor died.", th3);
                                    ti.f20033a.f20034ab.zzw(th3, "SphericalVideoProcessor.run.2");
                                }
                                this.r.i();
                                this.w.setOnFrameAvailableListener(null);
                                this.w = null;
                                ah();
                                return;
                            }
                        }
                        glCreateProgram = 0;
                        this.f5169c = glCreateProgram;
                        GLES20.glUseProgram(glCreateProgram);
                        af("useProgram");
                        int glGetAttribLocation2 = GLES20.glGetAttribLocation(this.f5169c, "aPosition");
                        GLES20.glVertexAttribPointer(glGetAttribLocation2, 3, 5126, false, 12, (Buffer) this.n);
                        af("vertexAttribPointer");
                        GLES20.glEnableVertexAttribArray(glGetAttribLocation2);
                        af("enableVertexAttribArray");
                        int[] iArr32 = new int[1];
                        GLES20.glGenTextures(1, iArr32, 0);
                        af("genTextures");
                        int i5 = iArr32[0];
                        GLES20.glBindTexture(36197, i5);
                        af("bindTextures");
                        GLES20.glTexParameteri(36197, 10240, 9729);
                        af("texParameteri");
                        GLES20.glTexParameteri(36197, 10241, 9729);
                        af("texParameteri");
                        GLES20.glTexParameteri(36197, 10242, 33071);
                        af("texParameteri");
                        GLES20.glTexParameteri(36197, 10243, 33071);
                        af("texParameteri");
                        int glGetUniformLocation4 = GLES20.glGetUniformLocation(this.f5169c, "uVMat");
                        this.z = glGetUniformLocation4;
                        GLES20.glUniformMatrix3fv(glGetUniformLocation4, 1, false, new float[]{1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f}, 0);
                        int i22 = this.f5169c;
                        if (z) {
                        }
                        String concat2 = "EGL initialization failed: ".concat(String.valueOf(GLUtils.getEGLErrorString(this.f5173g.eglGetError())));
                        agd.d(concat2);
                        ti.f20033a.f20034ab.zzw(new Throwable(concat2), "SphericalVideoProcessor.run.1");
                        ah();
                        this.f5170d.countDown();
                    }
                }
            }
        }
        z = false;
        zzbce zzbceVar3 = zzbcn.zzbq;
        edt edtVar2 = edt.f15376a;
        ae = ae(35633, ((String) edtVar2.f15379d.zza(zzbceVar3)).equals(zzbceVar3.zzk()) ? (String) edtVar2.f15379d.zza(zzbceVar3) : "attribute highp vec3 aPosition;varying vec3 pos;void main() {  gl_Position = vec4(aPosition, 1.0);  pos = aPosition;}");
        if (ae != 0) {
        }
        glCreateProgram = 0;
        this.f5169c = glCreateProgram;
        GLES20.glUseProgram(glCreateProgram);
        af("useProgram");
        int glGetAttribLocation22 = GLES20.glGetAttribLocation(this.f5169c, "aPosition");
        GLES20.glVertexAttribPointer(glGetAttribLocation22, 3, 5126, false, 12, (Buffer) this.n);
        af("vertexAttribPointer");
        GLES20.glEnableVertexAttribArray(glGetAttribLocation22);
        af("enableVertexAttribArray");
        int[] iArr322 = new int[1];
        GLES20.glGenTextures(1, iArr322, 0);
        af("genTextures");
        int i52 = iArr322[0];
        GLES20.glBindTexture(36197, i52);
        af("bindTextures");
        GLES20.glTexParameteri(36197, 10240, 9729);
        af("texParameteri");
        GLES20.glTexParameteri(36197, 10241, 9729);
        af("texParameteri");
        GLES20.glTexParameteri(36197, 10242, 33071);
        af("texParameteri");
        GLES20.glTexParameteri(36197, 10243, 33071);
        af("texParameteri");
        int glGetUniformLocation42 = GLES20.glGetUniformLocation(this.f5169c, "uVMat");
        this.z = glGetUniformLocation42;
        GLES20.glUniformMatrix3fv(glGetUniformLocation42, 1, false, new float[]{1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f}, 0);
        int i222 = this.f5169c;
        if (z) {
        }
        String concat22 = "EGL initialization failed: ".concat(String.valueOf(GLUtils.getEGLErrorString(this.f5173g.eglGetError())));
        agd.d(concat22);
        ti.f20033a.f20034ab.zzw(new Throwable(concat22), "SphericalVideoProcessor.run.1");
        ah();
        this.f5170d.countDown();
    }

    @Override // g.cqx
    public final void zza() {
        synchronized (this.m) {
            this.m.notifyAll();
        }
    }

    public final SurfaceTexture zzb() {
        if (this.h == null) {
            return null;
        }
        try {
            this.f5170d.await();
        } catch (InterruptedException unused) {
        }
        return this.w;
    }

    public final void zzc(int i, int i2) {
        synchronized (this.m) {
            this.aa = i;
            this.k = i2;
            this.s = true;
            this.m.notifyAll();
        }
    }

    public final void zzd(SurfaceTexture surfaceTexture, int i, int i2) {
        this.aa = i;
        this.k = i2;
        this.h = surfaceTexture;
    }

    public final void zze() {
        synchronized (this.m) {
            this.y = true;
            this.h = null;
            this.m.notifyAll();
        }
    }

    public final void zzf(float f2, float f3) {
        int i = this.aa;
        int i2 = this.k;
        if (i <= i2) {
            i = i2;
        }
        float f4 = i;
        this.i -= (f2 * 1.7453293f) / f4;
        float f5 = this.l - ((f3 * 1.7453293f) / f4);
        this.l = f5;
        if (f5 < -1.5707964f) {
            this.l = -1.5707964f;
            f5 = -1.5707964f;
        }
        if (f5 > 1.5707964f) {
            this.l = 1.5707964f;
        }
    }
}
