package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import j$.util.DesugarTimeZone;
import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class jo {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f19495a;

    /* renamed from: d, reason: collision with root package name */
    public static final HashMap[] f19498d;

    /* renamed from: f, reason: collision with root package name */
    public static final Charset f19500f;
    public static final vo h;
    public static final byte[] i;
    public static final vo[][] j;
    public static final vo[] k;
    public static final HashMap p;
    public static final HashMap[] r;
    public int aa;

    /* renamed from: ab, reason: collision with root package name */
    public final HashMap[] f19502ab;
    public int ac;
    public int t;
    public final HashSet u;
    public ByteOrder v;
    public final String w;
    public int x;
    public int y;
    public int z;

    /* renamed from: b, reason: collision with root package name */
    public static final List f19496b = Arrays.asList(1, 6, 3, 8);

    /* renamed from: g, reason: collision with root package name */
    public static final List f19501g = Arrays.asList(2, 7, 4, 5);
    public static final int[] n = {8, 8, 8};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f19499e = {8};

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f19497c = {-1, -40, -1};
    public static final byte[] m = {79, 76, 89, 77, 80, 0};
    public static final byte[] o = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
    public static final String[] s = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE"};
    public static final int[] l = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
    public static final byte[] q = {65, 83, 67, 73, 73, 0, 0, 0};

    static {
        vo[] voVarArr = {new vo("NewSubfileType", MediaPlayer.MEDIA_PLAYER_ADAPTIVE_WORK_AROUND_MODE, 4), new vo("SubfileType", MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, 4), new vo("ImageWidth", 256), new vo("ImageLength", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FALLBACK_SW_DEC), new vo("BitsPerSample", MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE, 3), new vo("Compression", MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME, 3), new vo("PhotometricInterpretation", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC, 3), new vo("ImageDescription", MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME, 2), new vo("Make", MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SWITCH_CACHE_TIME, 2), new vo("Model", MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME, 2), new vo("StripOffsets", MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_REQ_FINSIH_TIME), new vo("Orientation", MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME, 3), new vo("SamplesPerPixel", MediaPlayer.MEDIA_PLAYER_OPTION_READ_MODE, 3), new vo("RowsPerStrip", MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC), new vo("StripByteCounts", MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS), new vo("XResolution", MediaPlayer.MEDIA_PLAYER_OPTION_GET_LOW_UI_FPS, 5), new vo("YResolution", MediaPlayer.MEDIA_PLAYER_OPTION_GET_CUR_UI_FPS, 5), new vo("PlanarConfiguration", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VSYNC_HELPER, 3), new vo("ResolutionUnit", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BUFFER_THRESHOLD_CONTROL, 3), new vo("TransferFunction", MediaPlayer.MEDIA_PLAYER_OPTION_NOTIFY_DEAD_LOCK, 3), new vo("Software", MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_RATIO, 2), new vo("DateTime", MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_PREDELAY, 2), new vo("Artist", MediaPlayer.MEDIA_PLAYER_OPTION_STREAM_FORMAT, 2), new vo("WhitePoint", MediaPlayer.MEDIA_PLAYER_OPTION_TFO_FALL_BACK_TIME, 5), new vo("PrimaryChromaticities", MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_RENDER_TIME, 5), new vo("SubIFDPointer", MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_OPEN_VIDEO_FIRST, 4), new vo("JPEGInterchangeFormat", MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_ID, 4), new vo("JPEGInterchangeFormatLength", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_EXPIRED_LICENSE, 4), new vo("YCbCrCoefficients", 529, 5), new vo("YCbCrSubSampling", MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_VIDEO_STACK_SIZE, 3), new vo("YCbCrPositioning", MediaPlayer.MEDIA_PLAYER_OPTION_FORMATER_AUDIO_QUEUE_SIZE, 3), new vo("ReferenceBlackWhite", MediaPlayer.MEDIA_PLAYER_OPTION_SET_LLASH_FAST_OPEN, 5), new vo("Copyright", 33432, 2), new vo("ExifIFDPointer", 34665, 4), new vo("GPSInfoIFDPointer", 34853, 4), new vo("SensorTopBorder", 4, 4), new vo("SensorLeftBorder", 5, 4), new vo("SensorBottomBorder", 6, 4), new vo("SensorRightBorder", 7, 4), new vo("ISO", 23, 3), new vo("JpgFromRaw", 46, 7)};
        vo[] voVarArr2 = {new vo("ExposureTime", 33434, 5), new vo("FNumber", 33437, 5), new vo("ExposureProgram", 34850, 3), new vo("SpectralSensitivity", 34852, 2), new vo("PhotographicSensitivity", 34855, 3), new vo("OECF", 34856, 7), new vo("ExifVersion", 36864, 2), new vo("DateTimeOriginal", 36867, 2), new vo("DateTimeDigitized", 36868, 2), new vo("ComponentsConfiguration", 37121, 7), new vo("CompressedBitsPerPixel", 37122, 5), new vo("ShutterSpeedValue", 37377, 10), new vo("ApertureValue", 37378, 5), new vo("BrightnessValue", 37379, 10), new vo("ExposureBiasValue", 37380, 10), new vo("MaxApertureValue", 37381, 5), new vo("SubjectDistance", 37382, 5), new vo("MeteringMode", 37383, 3), new vo("LightSource", 37384, 3), new vo("Flash", 37385, 3), new vo("FocalLength", 37386, 5), new vo("SubjectArea", 37396, 3), new vo("MakerNote", 37500, 7), new vo("UserComment", 37510, 7), new vo("SubSecTime", 37520, 2), new vo("SubSecTimeOriginal", 37521, 2), new vo("SubSecTimeDigitized", 37522, 2), new vo("FlashpixVersion", 40960, 7), new vo("ColorSpace", 40961, 3), new vo("PixelXDimension", 40962), new vo("PixelYDimension", 40963), new vo("RelatedSoundFile", 40964, 2), new vo("InteroperabilityIFDPointer", 40965, 4), new vo("FlashEnergy", 41483, 5), new vo("SpatialFrequencyResponse", 41484, 7), new vo("FocalPlaneXResolution", 41486, 5), new vo("FocalPlaneYResolution", 41487, 5), new vo("FocalPlaneResolutionUnit", 41488, 3), new vo("SubjectLocation", 41492, 3), new vo("ExposureIndex", 41493, 5), new vo("SensingMethod", 41495, 3), new vo("FileSource", 41728, 7), new vo("SceneType", 41729, 7), new vo("CFAPattern", 41730, 7), new vo("CustomRendered", 41985, 3), new vo("ExposureMode", 41986, 3), new vo("WhiteBalance", 41987, 3), new vo("DigitalZoomRatio", 41988, 5), new vo("FocalLengthIn35mmFilm", 41989, 3), new vo("SceneCaptureType", 41990, 3), new vo("GainControl", 41991, 3), new vo("Contrast", 41992, 3), new vo("Saturation", 41993, 3), new vo("Sharpness", 41994, 3), new vo("DeviceSettingDescription", 41995, 7), new vo("SubjectDistanceRange", 41996, 3), new vo("ImageUniqueID", 42016, 2), new vo("DNGVersion", 50706, 1), new vo("DefaultCropSize", 50720)};
        vo[] voVarArr3 = {new vo("GPSVersionID", 0, 1), new vo("GPSLatitudeRef", 1, 2), new vo("GPSLatitude", 2, 5), new vo("GPSLongitudeRef", 3, 2), new vo("GPSLongitude", 4, 5), new vo("GPSAltitudeRef", 5, 1), new vo("GPSAltitude", 6, 5), new vo("GPSTimeStamp", 7, 5), new vo("GPSSatellites", 8, 2), new vo("GPSStatus", 9, 2), new vo("GPSMeasureMode", 10, 2), new vo("GPSDOP", 11, 5), new vo("GPSSpeedRef", 12, 2), new vo("GPSSpeed", 13, 5), new vo("GPSTrackRef", 14, 2), new vo("GPSTrack", 15, 5), new vo("GPSImgDirectionRef", 16, 2), new vo("GPSImgDirection", 17, 5), new vo("GPSMapDatum", 18, 2), new vo("GPSDestLatitudeRef", 19, 2), new vo("GPSDestLatitude", 20, 5), new vo("GPSDestLongitudeRef", 21, 2), new vo("GPSDestLongitude", 22, 5), new vo("GPSDestBearingRef", 23, 2), new vo("GPSDestBearing", 24, 5), new vo("GPSDestDistanceRef", 25, 2), new vo("GPSDestDistance", 26, 5), new vo("GPSProcessingMethod", 27, 7), new vo("GPSAreaInformation", 28, 7), new vo("GPSDateStamp", 29, 2), new vo("GPSDifferential", 30, 3)};
        vo[] voVarArr4 = {new vo("InteroperabilityIndex", 1, 2)};
        vo[] voVarArr5 = {new vo("NewSubfileType", MediaPlayer.MEDIA_PLAYER_ADAPTIVE_WORK_AROUND_MODE, 4), new vo("SubfileType", MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, 4), new vo("ThumbnailImageWidth", 256), new vo("ThumbnailImageLength", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FALLBACK_SW_DEC), new vo("BitsPerSample", MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE, 3), new vo("Compression", MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME, 3), new vo("PhotometricInterpretation", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC, 3), new vo("ImageDescription", MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME, 2), new vo("Make", MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SWITCH_CACHE_TIME, 2), new vo("Model", MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME, 2), new vo("StripOffsets", MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_REQ_FINSIH_TIME), new vo("Orientation", MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME, 3), new vo("SamplesPerPixel", MediaPlayer.MEDIA_PLAYER_OPTION_READ_MODE, 3), new vo("RowsPerStrip", MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC), new vo("StripByteCounts", MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS), new vo("XResolution", MediaPlayer.MEDIA_PLAYER_OPTION_GET_LOW_UI_FPS, 5), new vo("YResolution", MediaPlayer.MEDIA_PLAYER_OPTION_GET_CUR_UI_FPS, 5), new vo("PlanarConfiguration", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VSYNC_HELPER, 3), new vo("ResolutionUnit", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BUFFER_THRESHOLD_CONTROL, 3), new vo("TransferFunction", MediaPlayer.MEDIA_PLAYER_OPTION_NOTIFY_DEAD_LOCK, 3), new vo("Software", MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_RATIO, 2), new vo("DateTime", MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_PREDELAY, 2), new vo("Artist", MediaPlayer.MEDIA_PLAYER_OPTION_STREAM_FORMAT, 2), new vo("WhitePoint", MediaPlayer.MEDIA_PLAYER_OPTION_TFO_FALL_BACK_TIME, 5), new vo("PrimaryChromaticities", MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_RENDER_TIME, 5), new vo("SubIFDPointer", MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_OPEN_VIDEO_FIRST, 4), new vo("JPEGInterchangeFormat", MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_ID, 4), new vo("JPEGInterchangeFormatLength", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_EXPIRED_LICENSE, 4), new vo("YCbCrCoefficients", 529, 5), new vo("YCbCrSubSampling", MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_VIDEO_STACK_SIZE, 3), new vo("YCbCrPositioning", MediaPlayer.MEDIA_PLAYER_OPTION_FORMATER_AUDIO_QUEUE_SIZE, 3), new vo("ReferenceBlackWhite", MediaPlayer.MEDIA_PLAYER_OPTION_SET_LLASH_FAST_OPEN, 5), new vo("Copyright", 33432, 2), new vo("ExifIFDPointer", 34665, 4), new vo("GPSInfoIFDPointer", 34853, 4), new vo("DNGVersion", 50706, 1), new vo("DefaultCropSize", 50720)};
        h = new vo("StripOffsets", MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_REQ_FINSIH_TIME, 3);
        j = new vo[][]{voVarArr, voVarArr2, voVarArr3, voVarArr4, voVarArr5, voVarArr, new vo[]{new vo("ThumbnailImage", 256, 7), new vo("CameraSettingsIFDPointer", 8224, 4), new vo("ImageProcessingIFDPointer", 8256, 4)}, new vo[]{new vo("PreviewImageStart", MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FALLBACK_SW_DEC, 4), new vo("PreviewImageLength", MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE, 4)}, new vo[]{new vo("AspectFrame", 4371, 3)}, new vo[]{new vo("ColorSpace", 55, 3)}};
        k = new vo[]{new vo("SubIFDPointer", MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_OPEN_VIDEO_FIRST, 4), new vo("ExifIFDPointer", 34665, 4), new vo("GPSInfoIFDPointer", 34853, 4), new vo("InteroperabilityIFDPointer", 40965, 4), new vo("CameraSettingsIFDPointer", 8224, 1), new vo("ImageProcessingIFDPointer", 8256, 1)};
        r = new HashMap[10];
        f19498d = new HashMap[10];
        f19495a = new HashSet(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
        p = new HashMap();
        Charset forName = Charset.forName("US-ASCII");
        f19500f = forName;
        i = "Exif\u0000\u0000".getBytes(forName);
        new SimpleDateFormat("yyyy:MM:dd HH:mm:ss").setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        int i2 = 0;
        while (true) {
            vo[][] voVarArr6 = j;
            if (i2 >= voVarArr6.length) {
                HashMap hashMap = p;
                vo[] voVarArr7 = k;
                hashMap.put(Integer.valueOf(voVarArr7[0].f20184b), 5);
                hashMap.put(Integer.valueOf(voVarArr7[1].f20184b), 1);
                hashMap.put(Integer.valueOf(voVarArr7[2].f20184b), 2);
                hashMap.put(Integer.valueOf(voVarArr7[3].f20184b), 3);
                hashMap.put(Integer.valueOf(voVarArr7[4].f20184b), 7);
                hashMap.put(Integer.valueOf(voVarArr7[5].f20184b), 8);
                Pattern.compile(".*[1-9].*");
                Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");
                return;
            }
            r[i2] = new HashMap();
            f19498d[i2] = new HashMap();
            for (vo voVar : voVarArr6[i2]) {
                r[i2].put(Integer.valueOf(voVar.f20184b), voVar);
                f19498d[i2].put(voVar.f20185c, voVar);
            }
            i2++;
        }
    }

    public jo(String str) {
        vo[][] voVarArr = j;
        this.f19502ab = new HashMap[voVarArr.length];
        this.u = new HashSet(voVarArr.length);
        this.v = ByteOrder.BIG_ENDIAN;
        if (str == null) {
            throw new IllegalArgumentException("filename cannot be null");
        }
        this.w = str;
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                ap(fileInputStream2);
                try {
                    fileInputStream2.close();
                } catch (RuntimeException e2) {
                    throw e2;
                } catch (Exception unused) {
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (RuntimeException e3) {
                        throw e3;
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static ByteOrder ad(bia biaVar) {
        short readShort = biaVar.readShort();
        if (readShort == 18761) {
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (readShort == 19789) {
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException(awf.d(new StringBuilder("Invalid byte order: "), readShort));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long[] ae(Serializable serializable) {
        if (!(serializable instanceof int[])) {
            if (serializable instanceof long[]) {
                return (long[]) serializable;
            }
            return null;
        }
        int[] iArr = (int[]) serializable;
        long[] jArr = new long[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            jArr[i2] = iArr[i2];
        }
        return jArr;
    }

    public final void af(bia biaVar) {
        biaVar.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        biaVar.read(bArr);
        biaVar.skipBytes(4);
        biaVar.read(bArr2);
        int i2 = ByteBuffer.wrap(bArr).getInt();
        int i3 = ByteBuffer.wrap(bArr2).getInt();
        ak(biaVar, i2, 5);
        biaVar.g(i3);
        biaVar.f11632f = ByteOrder.BIG_ENDIAN;
        int readInt = biaVar.readInt();
        for (int i4 = 0; i4 < readInt; i4++) {
            int readUnsignedShort = biaVar.readUnsignedShort();
            int readUnsignedShort2 = biaVar.readUnsignedShort();
            if (readUnsignedShort == h.f20184b) {
                short readShort = biaVar.readShort();
                short readShort2 = biaVar.readShort();
                ebm f2 = ebm.f(readShort, this.v);
                ebm f3 = ebm.f(readShort2, this.v);
                HashMap[] hashMapArr = this.f19502ab;
                hashMapArr[0].put("ImageLength", f2);
                hashMapArr[0].put("ImageWidth", f3);
                return;
            }
            biaVar.skipBytes(readUnsignedShort2);
        }
    }

    public final void ag(bia biaVar, HashMap hashMap) {
        int i2;
        ebm ebmVar = (ebm) hashMap.get("JPEGInterchangeFormat");
        ebm ebmVar2 = (ebm) hashMap.get("JPEGInterchangeFormatLength");
        if (ebmVar == null || ebmVar2 == null) {
            return;
        }
        int h2 = ebmVar.h(this.v);
        int min = Math.min(ebmVar2.h(this.v), biaVar.f11631e.available() - h2);
        int i3 = this.z;
        if (i3 != 4 && i3 != 9 && i3 != 10) {
            if (i3 == 7) {
                i2 = this.ac;
            }
            if (h2 > 0 || min <= 0 || this.w != null) {
                return;
            }
            biaVar.g(h2);
            biaVar.readFully(new byte[min]);
            return;
        }
        i2 = this.x;
        h2 += i2;
        if (h2 > 0) {
        }
    }

    public final void ah(bia biaVar, int i2) {
        ByteOrder ad = ad(biaVar);
        this.v = ad;
        biaVar.f11632f = ad;
        int readUnsignedShort = biaVar.readUnsignedShort();
        int i3 = this.z;
        if (i3 != 7 && i3 != 10 && readUnsignedShort != 42) {
            throw new IOException(awf.d(new StringBuilder("Invalid start code: "), readUnsignedShort));
        }
        int readInt = biaVar.readInt();
        if (readInt < 8 || readInt >= i2) {
            throw new IOException(awf.ac(readInt, "Invalid first Ifd offset: "));
        }
        int i4 = readInt - 8;
        if (i4 > 0 && biaVar.skipBytes(i4) != i4) {
            throw new IOException(awf.ac(i4, "Couldn't jump to first Ifd: "));
        }
    }

    public final ebm ai(String str) {
        if ("ISOSpeedRatings".equals(str)) {
            str = "PhotographicSensitivity";
        }
        for (int i2 = 0; i2 < j.length; i2++) {
            ebm ebmVar = (ebm) this.f19502ab[i2].get(str);
            if (ebmVar != null) {
                return ebmVar;
            }
        }
        return null;
    }

    public final boolean aj(HashMap hashMap) {
        ebm ebmVar = (ebm) hashMap.get("ImageLength");
        ebm ebmVar2 = (ebm) hashMap.get("ImageWidth");
        if (ebmVar == null || ebmVar2 == null) {
            return false;
        }
        return ebmVar.h(this.v) <= 512 && ebmVar2.h(this.v) <= 512;
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0125, code lost:
    
        r12.f11632f = r11.v;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0129, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0056 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ak(bia biaVar, int i2, int i3) {
        biaVar.f11632f = ByteOrder.BIG_ENDIAN;
        biaVar.g(i2);
        byte readByte = biaVar.readByte();
        if (readByte != -1) {
            throw new IOException(awf.d(new StringBuilder("Invalid marker: "), readByte & 255));
        }
        if (biaVar.readByte() != -40) {
            throw new IOException(awf.d(new StringBuilder("Invalid marker: "), readByte & 255));
        }
        int i4 = i2 + 2;
        while (true) {
            byte readByte2 = biaVar.readByte();
            if (readByte2 != -1) {
                throw new IOException(awf.d(new StringBuilder("Invalid marker:"), readByte2 & 255));
            }
            byte readByte3 = biaVar.readByte();
            if (readByte3 != -39 && readByte3 != -38) {
                int readUnsignedShort = biaVar.readUnsignedShort();
                int i5 = readUnsignedShort - 2;
                int i6 = i4 + 4;
                if (i5 < 0) {
                    throw new IOException("Invalid length");
                }
                if (readByte3 != -31) {
                    HashMap[] hashMapArr = this.f19502ab;
                    if (readByte3 != -2) {
                        switch (readByte3) {
                            default:
                                switch (readByte3) {
                                    default:
                                        switch (readByte3) {
                                            default:
                                                switch (readByte3) {
                                                }
                                            case -55:
                                            case -54:
                                            case -53:
                                                if (biaVar.skipBytes(1) != 1) {
                                                    throw new IOException("Invalid SOFx");
                                                }
                                                hashMapArr[i3].put("ImageLength", ebm.d(biaVar.readUnsignedShort(), this.v));
                                                hashMapArr[i3].put("ImageWidth", ebm.d(biaVar.readUnsignedShort(), this.v));
                                                i5 = readUnsignedShort - 7;
                                                break;
                                        }
                                    case -59:
                                    case -58:
                                    case -57:
                                        break;
                                }
                            case -64:
                            case -63:
                            case -62:
                            case -61:
                                break;
                        }
                    } else {
                        byte[] bArr = new byte[i5];
                        if (biaVar.read(bArr) != i5) {
                            throw new IOException("Invalid exif");
                        }
                        if (at("UserComment") == null) {
                            HashMap hashMap = hashMapArr[1];
                            Charset charset = f19500f;
                            byte[] bytes = new String(bArr, charset).concat("\u0000").getBytes(charset);
                            hashMap.put("UserComment", new ebm(2, bytes, bytes.length));
                        }
                        i5 = 0;
                    }
                } else if (i5 >= 6) {
                    byte[] bArr2 = new byte[6];
                    if (biaVar.read(bArr2) != 6) {
                        throw new IOException("Invalid exif");
                    }
                    i6 = i4 + 10;
                    int i7 = readUnsignedShort - 8;
                    if (!Arrays.equals(bArr2, i)) {
                        i5 = i7;
                    } else {
                        if (i7 <= 0) {
                            throw new IOException("Invalid exif");
                        }
                        this.x = i6;
                        byte[] bArr3 = new byte[i7];
                        if (biaVar.read(bArr3) != i7) {
                            throw new IOException("Invalid exif");
                        }
                        i6 += i7;
                        bia biaVar2 = new bia(bArr3);
                        ah(biaVar2, i7);
                        ao(biaVar2, i3);
                        i5 = 0;
                    }
                }
                if (i5 < 0) {
                    throw new IOException("Invalid length");
                }
                if (biaVar.skipBytes(i5) != i5) {
                    throw new IOException("Invalid JPEG segment");
                }
                i4 = i6 + i5;
            }
        }
    }

    public final void al() {
        String at = at("DateTimeOriginal");
        HashMap[] hashMapArr = this.f19502ab;
        if (at != null && at("DateTime") == null) {
            HashMap hashMap = hashMapArr[0];
            byte[] bytes = at.concat("\u0000").getBytes(f19500f);
            hashMap.put("DateTime", new ebm(2, bytes, bytes.length));
        }
        if (at("ImageWidth") == null) {
            hashMapArr[0].put("ImageWidth", ebm.d(0L, this.v));
        }
        if (at("ImageLength") == null) {
            hashMapArr[0].put("ImageLength", ebm.d(0L, this.v));
        }
        if (at("Orientation") == null) {
            hashMapArr[0].put("Orientation", ebm.d(0L, this.v));
        }
        if (at("LightSource") == null) {
            hashMapArr[1].put("LightSource", ebm.d(0L, this.v));
        }
    }

    public final int am(BufferedInputStream bufferedInputStream) {
        bufferedInputStream.mark(MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
        byte[] bArr = new byte[MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        int i2 = 0;
        while (true) {
            byte[] bArr2 = f19497c;
            if (i2 >= bArr2.length) {
                return 4;
            }
            if (bArr[i2] != bArr2[i2]) {
                byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
                for (int i3 = 0; i3 < bytes.length; i3++) {
                    if (bArr[i3] != bytes[i3]) {
                        bia biaVar = new bia(bArr);
                        ByteOrder ad = ad(biaVar);
                        this.v = ad;
                        biaVar.f11632f = ad;
                        short readShort = biaVar.readShort();
                        biaVar.close();
                        if (readShort == 20306 || readShort == 21330) {
                            return 7;
                        }
                        bia biaVar2 = new bia(bArr);
                        ByteOrder ad2 = ad(biaVar2);
                        this.v = ad2;
                        biaVar2.f11632f = ad2;
                        short readShort2 = biaVar2.readShort();
                        biaVar2.close();
                        return readShort2 == 85 ? 10 : 0;
                    }
                }
                return 9;
            }
            i2++;
        }
    }

    public final void an(bia biaVar, int i2) {
        ebm ebmVar;
        ebm f2;
        ebm f3;
        HashMap[] hashMapArr = this.f19502ab;
        ebm ebmVar2 = (ebm) hashMapArr[i2].get("DefaultCropSize");
        ebm ebmVar3 = (ebm) hashMapArr[i2].get("SensorTopBorder");
        ebm ebmVar4 = (ebm) hashMapArr[i2].get("SensorLeftBorder");
        ebm ebmVar5 = (ebm) hashMapArr[i2].get("SensorBottomBorder");
        ebm ebmVar6 = (ebm) hashMapArr[i2].get("SensorRightBorder");
        if (ebmVar2 != null) {
            if (ebmVar2.f15245a == 5) {
                gxz[] gxzVarArr = (gxz[]) ebmVar2.j(this.v);
                if (gxzVarArr == null || gxzVarArr.length != 2) {
                    Arrays.toString(gxzVarArr);
                    return;
                } else {
                    f2 = ebm.e(gxzVarArr[0], this.v);
                    f3 = ebm.e(gxzVarArr[1], this.v);
                }
            } else {
                int[] iArr = (int[]) ebmVar2.j(this.v);
                if (iArr == null || iArr.length != 2) {
                    Arrays.toString(iArr);
                    return;
                } else {
                    f2 = ebm.f(iArr[0], this.v);
                    f3 = ebm.f(iArr[1], this.v);
                }
            }
            hashMapArr[i2].put("ImageWidth", f2);
            hashMapArr[i2].put("ImageLength", f3);
            return;
        }
        if (ebmVar3 == null || ebmVar4 == null || ebmVar5 == null || ebmVar6 == null) {
            ebm ebmVar7 = (ebm) hashMapArr[i2].get("ImageLength");
            ebm ebmVar8 = (ebm) hashMapArr[i2].get("ImageWidth");
            if ((ebmVar7 == null || ebmVar8 == null) && (ebmVar = (ebm) hashMapArr[i2].get("JPEGInterchangeFormat")) != null) {
                ak(biaVar, ebmVar.h(this.v), i2);
                return;
            }
            return;
        }
        int h2 = ebmVar3.h(this.v);
        int h3 = ebmVar5.h(this.v);
        int h4 = ebmVar6.h(this.v);
        int h5 = ebmVar4.h(this.v);
        if (h3 <= h2 || h4 <= h5) {
            return;
        }
        ebm f4 = ebm.f(h3 - h2, this.v);
        ebm f5 = ebm.f(h4 - h5, this.v);
        hashMapArr[i2].put("ImageLength", f4);
        hashMapArr[i2].put("ImageWidth", f5);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ao(bia biaVar, int i2) {
        HashMap[] hashMapArr;
        short s2;
        HashMap[] hashMapArr2;
        long j2;
        boolean z;
        int i3;
        HashMap[] hashMapArr3;
        long j3;
        int i4;
        int i5;
        int readUnsignedShort;
        long j4;
        int i6 = i2;
        Integer valueOf = Integer.valueOf(biaVar.f11630d);
        HashSet hashSet = this.u;
        hashSet.add(valueOf);
        int i7 = biaVar.f11630d + 2;
        int i8 = biaVar.f11629c;
        if (i7 > i8) {
            return;
        }
        short readShort = biaVar.readShort();
        if ((readShort * 12) + biaVar.f11630d > i8 || readShort <= 0) {
            return;
        }
        short s3 = 0;
        while (true) {
            hashMapArr = this.f19502ab;
            if (s3 >= readShort) {
                break;
            }
            int readUnsignedShort2 = biaVar.readUnsignedShort();
            int readUnsignedShort3 = biaVar.readUnsignedShort();
            int readInt = biaVar.readInt();
            short s4 = s3;
            long j5 = biaVar.f11630d + 4;
            vo voVar = (vo) r[i6].get(Integer.valueOf(readUnsignedShort2));
            if (voVar != null && readUnsignedShort3 > 0) {
                if (readUnsignedShort3 < l.length) {
                    int i9 = voVar.f20186d;
                    if (i9 == 7 || readUnsignedShort3 == 7 || i9 == readUnsignedShort3 || (i3 = voVar.f20183a) == readUnsignedShort3) {
                        s2 = readShort;
                    } else {
                        s2 = readShort;
                        if (((i9 != 4 && i3 != 4) || readUnsignedShort3 != 3) && (((i9 != 9 && i3 != 9) || readUnsignedShort3 != 8) && ((i9 != 12 && i3 != 12) || readUnsignedShort3 != 11))) {
                            String str = s[readUnsignedShort3];
                            hashMapArr2 = hashMapArr;
                            j2 = 0;
                            z = false;
                            if (z) {
                                biaVar.g(j5);
                            } else {
                                if (j2 > 4) {
                                    int readInt2 = biaVar.readInt();
                                    hashMapArr3 = hashMapArr2;
                                    int i10 = this.z;
                                    i4 = readUnsignedShort2;
                                    if (i10 == 7) {
                                        if ("MakerNote".equals(voVar.f20185c)) {
                                            this.ac = readInt2;
                                        } else if (i6 == 6 && "ThumbnailImage".equals(voVar.f20185c)) {
                                            this.t = readInt2;
                                            this.y = readInt;
                                            ebm f2 = ebm.f(6, this.v);
                                            j3 = j2;
                                            ebm d2 = ebm.d(this.t, this.v);
                                            i5 = readUnsignedShort3;
                                            ebm d3 = ebm.d(this.y, this.v);
                                            hashMapArr3[4].put("Compression", f2);
                                            hashMapArr3[4].put("JPEGInterchangeFormat", d2);
                                            hashMapArr3[4].put("JPEGInterchangeFormatLength", d3);
                                        }
                                        j3 = j2;
                                        i5 = readUnsignedShort3;
                                    } else {
                                        j3 = j2;
                                        i5 = readUnsignedShort3;
                                        if (i10 == 10 && "JpgFromRaw".equals(voVar.f20185c)) {
                                            this.aa = readInt2;
                                        }
                                    }
                                    long j6 = readInt2;
                                    if (j6 + j3 <= i8) {
                                        biaVar.g(j6);
                                    } else {
                                        biaVar.g(j5);
                                    }
                                } else {
                                    hashMapArr3 = hashMapArr2;
                                    j3 = j2;
                                    i4 = readUnsignedShort2;
                                    i5 = readUnsignedShort3;
                                }
                                Integer num = (Integer) p.get(Integer.valueOf(i4));
                                if (num != null) {
                                    int i11 = i5;
                                    if (i11 != 3) {
                                        if (i11 == 4) {
                                            j4 = biaVar.readInt() & 4294967295L;
                                        } else if (i11 == 8) {
                                            readUnsignedShort = biaVar.readShort();
                                        } else if (i11 == 9 || i11 == 13) {
                                            readUnsignedShort = biaVar.readInt();
                                        } else {
                                            j4 = -1;
                                        }
                                        if (j4 > 0 && j4 < i8 && !hashSet.contains(Integer.valueOf((int) j4))) {
                                            biaVar.g(j4);
                                            ao(biaVar, num.intValue());
                                        }
                                        biaVar.g(j5);
                                    } else {
                                        readUnsignedShort = biaVar.readUnsignedShort();
                                    }
                                    j4 = readUnsignedShort;
                                    if (j4 > 0) {
                                        biaVar.g(j4);
                                        ao(biaVar, num.intValue());
                                    }
                                    biaVar.g(j5);
                                } else {
                                    byte[] bArr = new byte[(int) j3];
                                    biaVar.readFully(bArr);
                                    ebm ebmVar = new ebm(i5, bArr, readInt);
                                    HashMap hashMap = hashMapArr3[i2];
                                    String str2 = voVar.f20185c;
                                    hashMap.put(str2, ebmVar);
                                    if ("DNGVersion".equals(str2)) {
                                        this.z = 3;
                                    }
                                    if ((("Make".equals(str2) || "Model".equals(str2)) && ebmVar.i(this.v).contains("PENTAX")) || ("Compression".equals(str2) && ebmVar.h(this.v) == 65535)) {
                                        this.z = 8;
                                    }
                                    if (biaVar.f11630d != j5) {
                                        biaVar.g(j5);
                                    }
                                }
                            }
                            s3 = (short) (s4 + 1);
                            i6 = i2;
                            readShort = s2;
                        }
                    }
                    if (readUnsignedShort3 == 7) {
                        readUnsignedShort3 = i9;
                    }
                    hashMapArr2 = hashMapArr;
                    j2 = r15[readUnsignedShort3] * readInt;
                    if (j2 >= 0 && j2 <= 2147483647L) {
                        z = true;
                        if (z) {
                        }
                        s3 = (short) (s4 + 1);
                        i6 = i2;
                        readShort = s2;
                    }
                    z = false;
                    if (z) {
                    }
                    s3 = (short) (s4 + 1);
                    i6 = i2;
                    readShort = s2;
                }
            }
            s2 = readShort;
            hashMapArr2 = hashMapArr;
            j2 = 0;
            z = false;
            if (z) {
            }
            s3 = (short) (s4 + 1);
            i6 = i2;
            readShort = s2;
        }
        if (biaVar.f11630d + 4 <= i8) {
            int readInt3 = biaVar.readInt();
            long j7 = readInt3;
            if (j7 <= 0 || readInt3 >= i8 || hashSet.contains(Integer.valueOf(readInt3))) {
                return;
            }
            biaVar.g(j7);
            if (hashMapArr[4].isEmpty()) {
                ao(biaVar, 4);
            } else if (hashMapArr[5].isEmpty()) {
                ao(biaVar, 5);
            }
        }
    }

    public final void ap(FileInputStream fileInputStream) {
        for (int i2 = 0; i2 < j.length; i2++) {
            try {
                this.f19502ab[i2] = new HashMap();
            } catch (IOException unused) {
                al();
                return;
            } catch (Throwable th) {
                al();
                throw th;
            }
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream, MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
        this.z = am(bufferedInputStream);
        bia biaVar = new bia(bufferedInputStream);
        switch (this.z) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 11:
                aq(biaVar);
                break;
            case 4:
                ak(biaVar, 0, 0);
                break;
            case 7:
                au(biaVar);
                break;
            case 9:
                af(biaVar);
                break;
            case 10:
                ar(biaVar);
                break;
        }
        as(biaVar);
        al();
    }

    public final void aq(bia biaVar) {
        ebm ebmVar;
        ah(biaVar, biaVar.f11631e.available());
        ao(biaVar, 0);
        an(biaVar, 0);
        an(biaVar, 5);
        an(biaVar, 4);
        av(0, 5);
        av(0, 4);
        av(5, 4);
        HashMap[] hashMapArr = this.f19502ab;
        ebm ebmVar2 = (ebm) hashMapArr[1].get("PixelXDimension");
        ebm ebmVar3 = (ebm) hashMapArr[1].get("PixelYDimension");
        if (ebmVar2 != null && ebmVar3 != null) {
            hashMapArr[0].put("ImageWidth", ebmVar2);
            hashMapArr[0].put("ImageLength", ebmVar3);
        }
        if (hashMapArr[4].isEmpty() && aj(hashMapArr[5])) {
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap();
        }
        aj(hashMapArr[4]);
        if (this.z != 8 || (ebmVar = (ebm) hashMapArr[1].get("MakerNote")) == null) {
            return;
        }
        bia biaVar2 = new bia(ebmVar.f15247c);
        biaVar2.f11632f = this.v;
        biaVar2.g(6L);
        ao(biaVar2, 9);
        ebm ebmVar4 = (ebm) hashMapArr[9].get("ColorSpace");
        if (ebmVar4 != null) {
            hashMapArr[1].put("ColorSpace", ebmVar4);
        }
    }

    public final void ar(bia biaVar) {
        aq(biaVar);
        HashMap[] hashMapArr = this.f19502ab;
        if (((ebm) hashMapArr[0].get("JpgFromRaw")) != null) {
            ak(biaVar, this.aa, 5);
        }
        ebm ebmVar = (ebm) hashMapArr[0].get("ISO");
        ebm ebmVar2 = (ebm) hashMapArr[1].get("PhotographicSensitivity");
        if (ebmVar == null || ebmVar2 != null) {
            return;
        }
        hashMapArr[1].put("PhotographicSensitivity", ebmVar);
    }

    public final void as(bia biaVar) {
        ebm ebmVar;
        HashMap hashMap = this.f19502ab[4];
        ebm ebmVar2 = (ebm) hashMap.get("Compression");
        if (ebmVar2 == null) {
            ag(biaVar, hashMap);
            return;
        }
        int h2 = ebmVar2.h(this.v);
        if (h2 != 1) {
            if (h2 == 6) {
                ag(biaVar, hashMap);
                return;
            } else if (h2 != 7) {
                return;
            }
        }
        ebm ebmVar3 = (ebm) hashMap.get("BitsPerSample");
        if (ebmVar3 != null) {
            int[] iArr = (int[]) ebmVar3.j(this.v);
            int[] iArr2 = n;
            if (!Arrays.equals(iArr2, iArr)) {
                if (this.z != 3 || (ebmVar = (ebm) hashMap.get("PhotometricInterpretation")) == null) {
                    return;
                }
                int h3 = ebmVar.h(this.v);
                if ((h3 != 1 || !Arrays.equals(iArr, f19499e)) && (h3 != 6 || !Arrays.equals(iArr, iArr2))) {
                    return;
                }
            }
            ebm ebmVar4 = (ebm) hashMap.get("StripOffsets");
            ebm ebmVar5 = (ebm) hashMap.get("StripByteCounts");
            if (ebmVar4 == null || ebmVar5 == null) {
                return;
            }
            long[] ae = ae(ebmVar4.j(this.v));
            long[] ae2 = ae(ebmVar5.j(this.v));
            if (ae == null || ae2 == null) {
                return;
            }
            long j2 = 0;
            for (long j3 : ae2) {
                j2 += j3;
            }
            byte[] bArr = new byte[(int) j2];
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < ae.length; i4++) {
                int i5 = (int) ae[i4];
                int i6 = (int) ae2[i4];
                int i7 = i5 - i2;
                biaVar.g(i7);
                int i8 = i2 + i7;
                byte[] bArr2 = new byte[i6];
                biaVar.read(bArr2);
                i2 = i8 + i6;
                System.arraycopy(bArr2, 0, bArr, i3, i6);
                i3 += i6;
            }
        }
    }

    public final String at(String str) {
        ebm ai = ai(str);
        if (ai != null) {
            if (!f19495a.contains(str)) {
                return ai.i(this.v);
            }
            if (str.equals("GPSTimeStamp")) {
                int i2 = ai.f15245a;
                if (i2 == 5 || i2 == 10) {
                    gxz[] gxzVarArr = (gxz[]) ai.j(this.v);
                    if (gxzVarArr == null || gxzVarArr.length != 3) {
                        Arrays.toString(gxzVarArr);
                        return null;
                    }
                    gxz gxzVar = gxzVarArr[0];
                    Integer valueOf = Integer.valueOf((int) (gxzVar.f18987a / gxzVar.f18988b));
                    gxz gxzVar2 = gxzVarArr[1];
                    Integer valueOf2 = Integer.valueOf((int) (gxzVar2.f18987a / gxzVar2.f18988b));
                    gxz gxzVar3 = gxzVarArr[2];
                    return String.format("%02d:%02d:%02d", valueOf, valueOf2, Integer.valueOf((int) (gxzVar3.f18987a / gxzVar3.f18988b)));
                }
            } else {
                try {
                    return Double.toString(ai.g(this.v));
                } catch (NumberFormatException unused) {
                }
            }
        }
        return null;
    }

    public final void au(bia biaVar) {
        int i2;
        int i3;
        aq(biaVar);
        HashMap[] hashMapArr = this.f19502ab;
        ebm ebmVar = (ebm) hashMapArr[1].get("MakerNote");
        if (ebmVar != null) {
            bia biaVar2 = new bia(ebmVar.f15247c);
            biaVar2.f11632f = this.v;
            byte[] bArr = m;
            byte[] bArr2 = new byte[bArr.length];
            biaVar2.readFully(bArr2);
            biaVar2.g(0L);
            byte[] bArr3 = o;
            byte[] bArr4 = new byte[bArr3.length];
            biaVar2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                biaVar2.g(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                biaVar2.g(12L);
            }
            ao(biaVar2, 6);
            ebm ebmVar2 = (ebm) hashMapArr[7].get("PreviewImageStart");
            ebm ebmVar3 = (ebm) hashMapArr[7].get("PreviewImageLength");
            if (ebmVar2 != null && ebmVar3 != null) {
                hashMapArr[5].put("JPEGInterchangeFormat", ebmVar2);
                hashMapArr[5].put("JPEGInterchangeFormatLength", ebmVar3);
            }
            ebm ebmVar4 = (ebm) hashMapArr[8].get("AspectFrame");
            if (ebmVar4 != null) {
                int[] iArr = (int[]) ebmVar4.j(this.v);
                if (iArr == null || iArr.length != 4) {
                    Arrays.toString(iArr);
                    return;
                }
                int i4 = iArr[2];
                int i5 = iArr[0];
                if (i4 <= i5 || (i2 = iArr[3]) <= (i3 = iArr[1])) {
                    return;
                }
                int i6 = (i4 - i5) + 1;
                int i7 = (i2 - i3) + 1;
                if (i6 < i7) {
                    int i8 = i6 + i7;
                    i7 = i8 - i7;
                    i6 = i8 - i7;
                }
                ebm f2 = ebm.f(i6, this.v);
                ebm f3 = ebm.f(i7, this.v);
                hashMapArr[0].put("ImageWidth", f2);
                hashMapArr[0].put("ImageLength", f3);
            }
        }
    }

    public final void av(int i2, int i3) {
        HashMap[] hashMapArr = this.f19502ab;
        if (hashMapArr[i2].isEmpty() || hashMapArr[i3].isEmpty()) {
            return;
        }
        ebm ebmVar = (ebm) hashMapArr[i2].get("ImageLength");
        ebm ebmVar2 = (ebm) hashMapArr[i2].get("ImageWidth");
        ebm ebmVar3 = (ebm) hashMapArr[i3].get("ImageLength");
        ebm ebmVar4 = (ebm) hashMapArr[i3].get("ImageWidth");
        if (ebmVar == null || ebmVar2 == null || ebmVar3 == null || ebmVar4 == null) {
            return;
        }
        int h2 = ebmVar.h(this.v);
        int h3 = ebmVar2.h(this.v);
        int h4 = ebmVar3.h(this.v);
        int h5 = ebmVar4.h(this.v);
        if (h2 >= h4 || h3 >= h5) {
            return;
        }
        HashMap hashMap = hashMapArr[i2];
        hashMapArr[i2] = hashMapArr[i3];
        hashMapArr[i3] = hashMap;
    }
}
