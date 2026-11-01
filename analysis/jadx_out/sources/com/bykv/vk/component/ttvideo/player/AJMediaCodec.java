package com.bykv.vk.component.ttvideo.player;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.os.Bundle;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.view.Surface;
import com.bykv.vk.component.ttvideo.utils.Util;
import com.ss.android.download.api.constant.BaseConstants;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

@Keep
@TargetApi(16)
/* loaded from: classes.dex */
class AJMediaCodec {
    private static final int AV_TRC_ARIB_STD_B67 = 18;
    private static final int AV_TRC_SMPTE2084 = 16;
    private static final int CODEC_ERROR = -10000;
    private static final int CODEC_EXCEPTION_ERROR = -10001;
    private static final int CODEC_ILLEGAL_ARGUMENT = -10003;
    private static final int CODEC_ILLEGAL_STATE = -10002;
    private static final double FIX_VERSION = 0.18041d;
    private static final long INPUT_TIMEOUT_US = 30000;
    private static final String KEY_CROP_BOTTOM = "crop-bottom";
    private static final String KEY_CROP_LEFT = "crop-left";
    private static final String KEY_CROP_RIGHT = "crop-right";
    private static final String KEY_CROP_TOP = "crop-top";
    private static final int NO_VALUE = -1;
    private static final int PIXEL_FORMAT_NV12 = 3;
    private static final int PIXEL_FORMAT_YUV420P = 0;
    private static final String TAG = "aj_media_codec";
    private static final String VENDOR_OPPO_PROPERTY = "persist.sys.aweme.hdsupport";
    private static final String VERSION_PROPERTY = "ro.config.hw_codec_support";
    private MediaCodec.BufferInfo mBufferInfo;
    private Surface mDummySurface;
    private String mExceptionInfo;
    private ByteBuffer[] mInputBuffers;
    private MediaCodec mMediaCodec;
    private ByteBuffer[] mOutputBuffers;
    private static ArrayList<MediaCodecInfo> mVideoHWDecoderCodecs = new ArrayList<>();
    private static Object mCodecListLock = new Object();
    private static boolean mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround = false;
    private static boolean mDeviceNeedsSetOutputSurfaceWorkaround = false;
    private static boolean mIsInitDetected = false;
    private static boolean mIsByteVC1Blocklist = false;
    private static boolean mNeedByteVC1WorkAround = false;
    private boolean mInputBuffersValid = false;
    private android.media.MediaFormat mOutputMediaFormat = null;

    @CalledByNative
    public AJMediaCodec() {
        boolean z = false;
        if (!mIsInitDetected) {
            if (Util.HARDWARE.toLowerCase(Locale.US).startsWith("mt") && Util.SDK_INT < 26) {
                z = true;
            }
            mNeedByteVC1WorkAround = z;
            if (isHisiByteVC1BlockList() || isMtkByteVC1BlockList()) {
                mIsByteVC1Blocklist = true;
            }
        }
        codecNeedsSetOutputSurfaceWorkaround();
        mIsInitDetected = true;
    }

    public static int ceilDivide(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    private static boolean codecNeedsFlushWorkaround(String str) {
        int i = Util.SDK_INT;
        if (i < 18) {
            return true;
        }
        if (i == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) {
            return true;
        }
        if (i == 19 && Util.MODEL.startsWith("SM-G800")) {
            return "OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0058 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0086 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007a A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000e, B:11:0x0089, B:12:0x008b, B:14:0x001e, B:26:0x005f, B:35:0x0070, B:38:0x007a, B:41:0x005d, B:42:0x0037, B:45:0x0041, B:48:0x004b, B:51:0x008d), top: B:3:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean codecNeedsSetOutputSurfaceWorkaround() {
        char c2;
        int hashCode;
        synchronized (AJMediaCodec.class) {
            try {
                if (!mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround) {
                    int i = Util.SDK_INT;
                    if (i <= 27) {
                        if (!"dangal".equals(Util.DEVICE)) {
                        }
                        mDeviceNeedsSetOutputSurfaceWorkaround = true;
                        mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround = true;
                    }
                    if (i < 27) {
                        String str = Util.DEVICE;
                        int hashCode2 = str.hashCode();
                        char c3 = 0;
                        if (hashCode2 == 99329) {
                            if (str.equals("deb")) {
                                c2 = 0;
                                if (c2 != 0) {
                                }
                                mDeviceNeedsSetOutputSurfaceWorkaround = true;
                                String str2 = Util.MODEL;
                                hashCode = str2.hashCode();
                                if (hashCode == 2006354) {
                                }
                            }
                            c2 = 65535;
                            if (c2 != 0) {
                            }
                            mDeviceNeedsSetOutputSurfaceWorkaround = true;
                            String str22 = Util.MODEL;
                            hashCode = str22.hashCode();
                            if (hashCode == 2006354) {
                            }
                        } else if (hashCode2 != 3351335) {
                            if (hashCode2 == 1865889110 && str.equals("santoni")) {
                                c2 = 2;
                                if (c2 != 0 || c2 == 1 || c2 == 2) {
                                    mDeviceNeedsSetOutputSurfaceWorkaround = true;
                                }
                                String str222 = Util.MODEL;
                                hashCode = str222.hashCode();
                                if (hashCode == 2006354) {
                                    if (hashCode == 2006367 && str222.equals("AFTN")) {
                                        c3 = 1;
                                        if (c3 != 0 && c3 != 1) {
                                        }
                                        mDeviceNeedsSetOutputSurfaceWorkaround = true;
                                    }
                                    c3 = 65535;
                                    if (c3 != 0) {
                                    }
                                    mDeviceNeedsSetOutputSurfaceWorkaround = true;
                                } else {
                                    if (str222.equals("AFTA")) {
                                        if (c3 != 0) {
                                        }
                                        mDeviceNeedsSetOutputSurfaceWorkaround = true;
                                    }
                                    c3 = 65535;
                                    if (c3 != 0) {
                                    }
                                    mDeviceNeedsSetOutputSurfaceWorkaround = true;
                                }
                            }
                            c2 = 65535;
                            if (c2 != 0) {
                            }
                            mDeviceNeedsSetOutputSurfaceWorkaround = true;
                            String str2222 = Util.MODEL;
                            hashCode = str2222.hashCode();
                            if (hashCode == 2006354) {
                            }
                        } else {
                            if (str.equals("mido")) {
                                c2 = 1;
                                if (c2 != 0) {
                                }
                                mDeviceNeedsSetOutputSurfaceWorkaround = true;
                                String str22222 = Util.MODEL;
                                hashCode = str22222.hashCode();
                                if (hashCode == 2006354) {
                                }
                            }
                            c2 = 65535;
                            if (c2 != 0) {
                            }
                            mDeviceNeedsSetOutputSurfaceWorkaround = true;
                            String str222222 = Util.MODEL;
                            hashCode = str222222.hashCode();
                            if (hashCode == 2006354) {
                            }
                        }
                    }
                    mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mDeviceNeedsSetOutputSurfaceWorkaround;
    }

    private void createDummySurface() {
        this.mDummySurface = DummySurface.newInstanceV17(false);
    }

    private static int getMaxInputSize(String str, int i, int i2) {
        int i3;
        int i4;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        if (!str.equals("video/3gpp") && !str.equals("video/mp4v-es")) {
            if (str.equals("video/avc")) {
                if ("BRAVIA 4K 2015".equals(Util.MODEL)) {
                    return -1;
                }
                i3 = ceilDivide(i, 16) * ceilDivide(i2, 16) * 256;
                i4 = 2;
                return (i3 * 3) / (i4 * 2);
            }
            if (!str.equals("video/x-vnd.on2.vp8")) {
                if (!str.equals("video/hevc") && !str.equals("video/x-vnd.on2.vp9")) {
                    return -1;
                }
                i3 = i * i2;
                i4 = 4;
                return (i3 * 3) / (i4 * 2);
            }
        }
        i3 = i * i2;
        i4 = 2;
        return (i3 * 3) / (i4 * 2);
    }

    public static String getProperty(String str, String str2) {
        try {
            try {
                return (String) SystemProperties.class.getMethod("get", String.class, String.class).invoke(SystemProperties.class, str, str2);
            } catch (Exception e2) {
                e2.printStackTrace();
                return str2;
            }
        } catch (Throwable unused) {
            return str2;
        }
    }

    private boolean isHisiByteVC1BlockList() {
        double d2;
        String property = getProperty("ro.board.platform", null);
        if (Util.SDK_INT != 26 || property == null) {
            return false;
        }
        if (!property.startsWith("kirin960") && !property.startsWith("hi3660")) {
            return false;
        }
        try {
            d2 = Double.parseDouble(getProperty(VERSION_PROPERTY, "0.0"));
        } catch (NumberFormatException unused) {
            d2 = 0.0d;
        }
        return d2 < FIX_VERSION;
    }

    private boolean isMtkByteVC1BlockList() {
        String lowerCase = Util.HARDWARE.toLowerCase(Locale.US);
        return lowerCase.startsWith("mt6763") || lowerCase.startsWith("mt6757") || lowerCase.startsWith("mt6739") || lowerCase.startsWith("mt6750");
    }

    private static void maybeSetCsdBuffers(android.media.MediaFormat mediaFormat, ByteBuffer byteBuffer, int i) {
        if (byteBuffer == null) {
            return;
        }
        mediaFormat.setByteBuffer("csd-".concat(String.valueOf(i)), byteBuffer);
    }

    private static void maybeSetInteger(android.media.MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseCodec(MediaCodec mediaCodec) {
        if (mediaCodec == null) {
            return;
        }
        try {
            mediaCodec.release();
            Surface surface = this.mDummySurface;
            if (surface != null) {
                surface.release();
                this.mDummySurface = null;
            }
        } catch (Exception unused) {
            if (this.mDummySurface != null) {
                this.mDummySurface.release();
                this.mDummySurface = null;
            }
        } catch (Throwable th) {
            if (this.mDummySurface != null) {
                this.mDummySurface.release();
                this.mDummySurface = null;
            }
            throw th;
        }
    }

    @TargetApi(21)
    private int renderOutputBufferV21(int i, long j) {
        try {
            this.mMediaCodec.releaseOutputBuffer(i, j);
            return 0;
        } catch (Exception unused) {
            return CODEC_ERROR;
        }
    }

    @TargetApi(23)
    private int setOutputSurfaceV23(MediaCodec mediaCodec, Surface surface) {
        try {
            mediaCodec.setOutputSurface(surface);
            return 0;
        } catch (Exception e2) {
            handleCodecException(e2);
            "setoutputsurface failed = ".concat(String.valueOf(e2));
            return -1;
        }
    }

    @CalledByNative
    private boolean supportSetSurface() {
        return !mDeviceNeedsSetOutputSurfaceWorkaround;
    }

    public boolean MTKByteVC1NeedWorkAround() {
        return mNeedByteVC1WorkAround;
    }

    @CalledByNative
    public void close() {
        if (this.mMediaCodec != null) {
            stop();
            final MediaCodec mediaCodec = this.mMediaCodec;
            this.mInputBuffers = null;
            this.mOutputBuffers = null;
            this.mMediaCodec = null;
            try {
                AVThreadPool.addTask(new Runnable() { // from class: com.bykv.vk.component.ttvideo.player.AJMediaCodec.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AJMediaCodec.this.releaseCodec(mediaCodec);
                    }
                });
            } catch (Throwable unused) {
                releaseCodec(mediaCodec);
            }
        }
    }

    @CalledByNative
    public int configure(int i, int i2, int i3, int i4, int i5, String str, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, Surface surface, boolean z, boolean z2, int i6, int i7, boolean z3, int i8, boolean z4, boolean z5, int i9, int i10) {
        Surface surface2;
        int i11 = i6;
        int i12 = i7;
        Objects.toString(surface);
        android.media.MediaFormat mediaFormat = new android.media.MediaFormat();
        mediaFormat.setString("mime", str);
        maybeSetInteger(mediaFormat, MediaFormat.KEY_WIDTH, i);
        maybeSetInteger(mediaFormat, MediaFormat.KEY_HEIGHT, i2);
        if (i11 != -1 && i12 != -1) {
            if (i11 <= i) {
                i11 = i;
            }
            maybeSetInteger(mediaFormat, "max-width", i11);
            if (i12 <= i2) {
                i12 = i2;
            }
            maybeSetInteger(mediaFormat, "max-height", i12);
        }
        maybeSetInteger(mediaFormat, MediaFormat.KEY_SAMPLE_RATE, i4);
        maybeSetInteger(mediaFormat, MediaFormat.KEY_CHANNEL_COUNT, i5);
        "format  = ".concat(String.valueOf(mediaFormat));
        int maxInputSize = getMaxInputSize(str, i, i2);
        "max input = ".concat(String.valueOf(maxInputSize));
        maybeSetInteger(mediaFormat, "max-input-size", maxInputSize);
        maybeSetCsdBuffers(mediaFormat, byteBuffer, 0);
        maybeSetCsdBuffers(mediaFormat, byteBuffer2, 1);
        maybeSetCsdBuffers(mediaFormat, byteBuffer3, 2);
        if (z) {
            int i13 = Util.SDK_INT;
            if (i13 >= 21) {
                maybeSetInteger(mediaFormat, "rotation-degrees", i3);
            }
            if ((surface == null || !surface.isValid()) && this.mDummySurface == null && i13 >= 23 && !mDeviceNeedsSetOutputSurfaceWorkaround) {
                createDummySurface();
                surface2 = this.mDummySurface;
            } else {
                surface2 = surface;
            }
            if (surface2 == null) {
                this.mExceptionInfo = "Error: configure with null surface";
                return CODEC_ILLEGAL_ARGUMENT;
            }
        } else {
            surface2 = surface;
        }
        if (Util.SDK_INT >= 23 && z2) {
            mediaFormat.setInteger("priority", 0);
        }
        if (z3) {
            VendorQTI.setupVpp(mediaFormat, i8);
        }
        if (z4) {
            VendorQTI.debugEffect(mediaFormat);
        }
        if (z5) {
            VendorQTI.enableLowLatency(mediaFormat);
        }
        if (i10 > 0 && i9 >= 0) {
            String dolbyCodecs = MediaCodecUtil.getDolbyCodecs(i9, i10);
            Pair<Integer, Integer> dolbyVisionProfileAndLevel = MediaCodecUtil.getDolbyVisionProfileAndLevel(dolbyCodecs, dolbyCodecs.split("\\."));
            if (dolbyVisionProfileAndLevel != null) {
                maybeSetInteger(mediaFormat, "profile", ((Integer) dolbyVisionProfileAndLevel.first).intValue());
            }
        }
        try {
            this.mMediaCodec.configure(mediaFormat, surface2, (MediaCrypto) null, 0);
            return 0;
        } catch (Exception e2) {
            handleCodecException(e2);
            if (e2 instanceof IllegalArgumentException) {
                return CODEC_ILLEGAL_ARGUMENT;
            }
            return -1;
        }
    }

    @CalledByNative
    public int createByCodecName(String str) {
        "createByCodecName = ".concat(String.valueOf(str));
        try {
            this.mMediaCodec = MediaCodec.createByCodecName(str);
            return 0;
        } catch (Exception e2) {
            handleCodecException(e2);
            return -1;
        }
    }

    @TargetApi(23)
    @CalledByNative
    public void decodeFRC(int i) {
        if (this.mMediaCodec == null || !this.mInputBuffersValid || Util.SDK_INT < 23) {
            return;
        }
        "frc level = ".concat(String.valueOf(i));
        Bundle bundle = new Bundle();
        bundle.putInt("vivo.video-dec.dynamic-frc", i);
        try {
            this.mMediaCodec.setParameters(bundle);
        } catch (Exception e2) {
            "setParameters failed ret = ".concat(String.valueOf(e2));
        }
    }

    @CalledByNative
    public int dequeueInputBuffer(long j) {
        try {
            return this.mMediaCodec.dequeueInputBuffer(j);
        } catch (Exception e2) {
            return handleCodecException(e2);
        }
    }

    @CalledByNative
    public void flush() {
        try {
            this.mMediaCodec.flush();
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x005a, code lost:
    
        r8 = com.bykv.vk.component.ttvideo.player.AJMediaCodec.mVideoHWDecoderCodecs.get(r7);
     */
    @CalledByNative
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String getBestCodecName(String str) {
        String[] supportedTypes;
        int i;
        AJMediaCodecRank aJMediaCodecRank;
        if (Util.SDK_INT < 16 || TextUtils.isEmpty(str) || (str.equals("video/hevc") && mIsByteVC1Blocklist)) {
            return null;
        }
        "detect hardware codec by codecType = ".concat(str);
        ArrayList arrayList = new ArrayList();
        synchronized (mCodecListLock) {
            try {
                boolean isEmpty = mVideoHWDecoderCodecs.isEmpty();
                try {
                    int size = !isEmpty ? mVideoHWDecoderCodecs.size() : MediaCodecList.getCodecCount();
                    int i2 = 0;
                    while (i2 < size && (isEmpty || arrayList.isEmpty())) {
                        MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i2);
                        String name = codecInfoAt.getName();
                        if (!codecInfoAt.isEncoder() && !name.startsWith("OMX.google") && !name.startsWith("c2.android") && (supportedTypes = codecInfoAt.getSupportedTypes()) != null) {
                            int length = supportedTypes.length;
                            while (i < length) {
                                String str2 = supportedTypes[i];
                                if (!TextUtils.isEmpty(str2)) {
                                    if (isEmpty && str2.startsWith("video/")) {
                                        mVideoHWDecoderCodecs.add(codecInfoAt);
                                    }
                                    if (str2.equalsIgnoreCase(str)) {
                                        if (!name.startsWith("OMX.")) {
                                            if (name.startsWith("c2.")) {
                                            }
                                        }
                                        if (!name.startsWith("OMX.pv") && !name.startsWith("OMX.ittiam") && !name.contains("ffmpeg") && !name.contains("avcodec") && !name.contains("secure") && ((!name.startsWith("OMX.MTK.") || Util.SDK_INT >= 18) && !codecNeedsFlushWorkaround(name) && (aJMediaCodecRank = AJMediaCodecRank.setupRank(codecInfoAt, str)) != null)) {
                                            aJMediaCodecRank.mMediaCodecInfo.getName();
                                            int i3 = aJMediaCodecRank.mRank;
                                            i = (i3 == 40 && Util.SDK_INT < 21) ? i + 1 : 0;
                                            if (i3 != 20) {
                                                arrayList.add(aJMediaCodecRank);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        i2++;
                    }
                    if (arrayList.isEmpty()) {
                        return null;
                    }
                    AJMediaCodecRank aJMediaCodecRank2 = (AJMediaCodecRank) arrayList.get(0);
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        AJMediaCodecRank aJMediaCodecRank3 = (AJMediaCodecRank) it.next();
                        if (aJMediaCodecRank3.mRank > aJMediaCodecRank2.mRank) {
                            aJMediaCodecRank2 = aJMediaCodecRank3;
                        }
                    }
                    return aJMediaCodecRank2.mMediaCodecInfo.getName();
                } catch (Exception unused) {
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @CalledByNative
    public int getChannelCount() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                return mediaFormat.getInteger(MediaFormat.KEY_CHANNEL_COUNT);
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public int getColorFormat() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                int integer = mediaFormat.getInteger("color-format");
                return (integer == 21 || integer == 2130706688 || integer == 2141391872) ? 3 : 0;
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public int getColorTransfer() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                int integer = mediaFormat.getInteger("color-transfer");
                if (integer != 6) {
                    return integer != 7 ? 0 : 18;
                }
                return 16;
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public String getErrorInfo() {
        return this.mExceptionInfo;
    }

    @CalledByNative
    public int getFormatHeight() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                return (mediaFormat.containsKey(KEY_CROP_RIGHT) && this.mOutputMediaFormat.containsKey(KEY_CROP_LEFT) && this.mOutputMediaFormat.containsKey(KEY_CROP_BOTTOM) && this.mOutputMediaFormat.containsKey(KEY_CROP_TOP)) ? (this.mOutputMediaFormat.getInteger(KEY_CROP_BOTTOM) - this.mOutputMediaFormat.getInteger(KEY_CROP_TOP)) + 1 : this.mOutputMediaFormat.getInteger(MediaFormat.KEY_HEIGHT);
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public int getFormatWidth() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                return (mediaFormat.containsKey(KEY_CROP_RIGHT) && this.mOutputMediaFormat.containsKey(KEY_CROP_LEFT) && this.mOutputMediaFormat.containsKey(KEY_CROP_BOTTOM) && this.mOutputMediaFormat.containsKey(KEY_CROP_TOP)) ? (this.mOutputMediaFormat.getInteger(KEY_CROP_RIGHT) - this.mOutputMediaFormat.getInteger(KEY_CROP_LEFT)) + 1 : this.mOutputMediaFormat.getInteger(MediaFormat.KEY_WIDTH);
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public ByteBuffer[] getInputBuffers() {
        if (this.mInputBuffersValid) {
            return this.mInputBuffers;
        }
        return null;
    }

    @CalledByNative
    public int getOSVerion() {
        return Util.SDK_INT;
    }

    @CalledByNative
    public int getSampleRate() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                return mediaFormat.getInteger(MediaFormat.KEY_SAMPLE_RATE);
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public int getSliceHeight() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                return mediaFormat.getInteger("slice-height");
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public int getStride() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                return mediaFormat.getInteger("stride");
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public int handleCodecException(Exception exc) {
        this.mExceptionInfo = exc.toString();
        return Util.SDK_INT >= 21 ? handleCodecExceptionV21(exc) : exc instanceof IllegalStateException ? CODEC_ILLEGAL_STATE : CODEC_ERROR;
    }

    @TargetApi(21)
    public int handleCodecExceptionV21(Exception exc) {
        int errorCode;
        int errorCode2;
        if (exc instanceof MediaCodec.CodecException) {
            MediaCodec.CodecException codecException = (MediaCodec.CodecException) exc;
            if (Util.SDK_INT >= 23) {
                codecException.isRecoverable();
                codecException.getErrorCode();
                if (!codecException.isRecoverable()) {
                    errorCode = codecException.getErrorCode();
                    if (errorCode != 1100) {
                        errorCode2 = codecException.getErrorCode();
                        if (errorCode2 != 1101) {
                            return CODEC_EXCEPTION_ERROR;
                        }
                    }
                }
            } else {
                codecException.isRecoverable();
                if (!codecException.isRecoverable()) {
                    return CODEC_EXCEPTION_ERROR;
                }
            }
        }
        return exc instanceof IllegalStateException ? CODEC_ILLEGAL_STATE : CODEC_ERROR;
    }

    public int open(int i, int i2, int i3, String str, String str2, ByteBuffer byteBuffer, Surface surface) {
        try {
            this.mMediaCodec = MediaCodec.createByCodecName(str);
            android.media.MediaFormat mediaFormat = new android.media.MediaFormat();
            mediaFormat.setString("mime", str2);
            maybeSetInteger(mediaFormat, MediaFormat.KEY_WIDTH, i);
            maybeSetInteger(mediaFormat, MediaFormat.KEY_HEIGHT, i2);
            if (byteBuffer != null) {
                mediaFormat.setByteBuffer("csd-0", byteBuffer);
            }
            if (surface != null && Util.SDK_INT >= 21) {
                maybeSetInteger(mediaFormat, "rotation-degrees", i3);
            }
            this.mMediaCodec.configure(mediaFormat, surface, (MediaCrypto) null, 0);
            this.mMediaCodec.start();
            this.mInputBuffers = this.mMediaCodec.getInputBuffers();
            this.mInputBuffersValid = true;
            Locale locale = Locale.US;
            return 0;
        } catch (Exception unused) {
            return -1;
        }
    }

    @CalledByNative
    public int queueInputBuffer(int i, int i2, int i3, long j, int i4) {
        try {
            this.mMediaCodec.queueInputBuffer(i, i2, i3, j, i4);
            return 0;
        } catch (Exception e2) {
            return handleCodecException(e2);
        }
    }

    @CalledByNative
    public int read(AJMediaCodecFrame aJMediaCodecFrame, long j) {
        while (true) {
            try {
                int dequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(this.mBufferInfo, j);
                if (dequeueOutputBuffer >= 0) {
                    aJMediaCodecFrame.data = this.mOutputBuffers[dequeueOutputBuffer];
                    MediaCodec.BufferInfo bufferInfo = this.mBufferInfo;
                    aJMediaCodecFrame.pts = bufferInfo.presentationTimeUs;
                    aJMediaCodecFrame.index = dequeueOutputBuffer;
                    aJMediaCodecFrame.size = bufferInfo.size;
                    aJMediaCodecFrame.flags = bufferInfo.flags;
                    return 0;
                }
                if (dequeueOutputBuffer != -3) {
                    if (dequeueOutputBuffer != -2) {
                        if (dequeueOutputBuffer != -1) {
                            Log.e(TAG, "error, idx = ".concat(String.valueOf(dequeueOutputBuffer)));
                        }
                        return -1;
                    }
                    try {
                        this.mOutputMediaFormat = this.mMediaCodec.getOutputFormat();
                        if (this.mOutputBuffers != null) {
                            return dequeueOutputBuffer;
                        }
                        try {
                            this.mOutputBuffers = this.mMediaCodec.getOutputBuffers();
                            return dequeueOutputBuffer;
                        } catch (Exception e2) {
                            "getOutputBuffers e = ".concat(String.valueOf(e2));
                            return handleCodecException(e2);
                        }
                    } catch (Exception e3) {
                        "getOutputFormat e =".concat(String.valueOf(e3));
                        return handleCodecException(e3);
                    }
                }
                try {
                    this.mOutputBuffers = this.mMediaCodec.getOutputBuffers();
                } catch (Exception e4) {
                    "getOutputBuffers e = ".concat(String.valueOf(e4));
                    return handleCodecException(e4);
                }
            } catch (Exception e5) {
                "dequeueOutputBuffer e :".concat(String.valueOf(e5));
                return handleCodecException(e5);
            }
        }
    }

    @CalledByNative
    public int releaseBuffer(int i, boolean z, long j) {
        if (Util.SDK_INT >= 21 && z) {
            return renderOutputBufferV21(i, j);
        }
        try {
            this.mMediaCodec.releaseOutputBuffer(i, z);
            return 0;
        } catch (Exception e2) {
            return handleCodecException(e2);
        }
    }

    @CalledByNative
    public int setOutputSurface(Surface surface) {
        if (mDeviceNeedsSetOutputSurfaceWorkaround || !this.mInputBuffersValid) {
            return -1;
        }
        if (surface == null) {
            if (this.mDummySurface == null) {
                createDummySurface();
            }
            surface = this.mDummySurface;
        }
        return setOutputSurfaceV23(this.mMediaCodec, surface);
    }

    @TargetApi(23)
    @CalledByNative
    public void speedEnhance(float f2) {
        if (this.mMediaCodec == null || !this.mInputBuffersValid || Util.SDK_INT < 23 || f2 <= 30.0f) {
            return;
        }
        "rate ".concat(String.valueOf(f2));
        Bundle bundle = new Bundle();
        bundle.putFloat("operating-rate", f2);
        try {
            this.mMediaCodec.setParameters(bundle);
        } catch (Exception e2) {
            "setParameters failed ret = ".concat(String.valueOf(e2));
        }
    }

    @CalledByNative
    public int start() {
        try {
            this.mMediaCodec.start();
            this.mInputBuffers = this.mMediaCodec.getInputBuffers();
            if (Util.SDK_INT >= 21) {
                this.mOutputBuffers = this.mMediaCodec.getOutputBuffers();
            }
            this.mInputBuffersValid = true;
            this.mBufferInfo = new MediaCodec.BufferInfo();
            return 0;
        } catch (Exception e2) {
            handleCodecException(e2);
            return -1;
        }
    }

    @CalledByNative
    public int stop() {
        if (this.mInputBuffersValid) {
            try {
                this.mInputBuffersValid = false;
                this.mMediaCodec.stop();
            } catch (Exception unused) {
                return -1;
            }
        }
        return 0;
    }

    @CalledByNative
    public int vendorOppoHWEnable() {
        if (!Util.BARND.equals(BaseConstants.ROM_OPPO_UPPER_CONSTANT)) {
            return 1;
        }
        String property = getProperty(VENDOR_OPPO_PROPERTY, "1");
        "oppo property = ".concat(String.valueOf(property));
        try {
            return Integer.parseInt(property);
        } catch (NumberFormatException unused) {
            return 1;
        }
    }

    @CalledByNative
    public int write(AJMediaCodecFrame aJMediaCodecFrame) {
        if (aJMediaCodecFrame != null && aJMediaCodecFrame.data != null) {
            try {
                int dequeueInputBuffer = this.mMediaCodec.dequeueInputBuffer(INPUT_TIMEOUT_US);
                if (dequeueInputBuffer < 0) {
                    return dequeueInputBuffer == -1 ? 4 : -1;
                }
                this.mInputBuffers[dequeueInputBuffer].put(aJMediaCodecFrame.data);
                this.mMediaCodec.queueInputBuffer(dequeueInputBuffer, 0, aJMediaCodecFrame.size, aJMediaCodecFrame.pts, 0);
                return 0;
            } catch (Exception e2) {
                Log.e(TAG, "write meet exception =".concat(String.valueOf(e2)));
            }
        }
        return -1;
    }
}
