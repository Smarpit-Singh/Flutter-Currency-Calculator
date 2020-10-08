
class CurrencyModel {
  bool _success;
  int _timestamp;
  String _base;
  String _date;
  Rates _rates;

  CurrencyModel(
      {bool success, int timestamp, String base, String date, Rates rates}) {
    this._success = success;
    this._timestamp = timestamp;
    this._base = base;
    this._date = date;
    this._rates = rates;
  }

  bool get success => _success;
  set success(bool success) => _success = success;
  int get timestamp => _timestamp;
  set timestamp(int timestamp) => _timestamp = timestamp;
  String get base => _base;
  set base(String base) => _base = base;
  String get date => _date;
  set date(String date) => _date = date;
  Rates get rates => _rates;
  set rates(Rates rates) => _rates = rates;

  CurrencyModel.fromJson(Map<String, dynamic> json) {
    _success = json['success'];
    _timestamp = json['timestamp'];
    _base = json['base'];
    _date = json['date'];
    _rates = json['rates'] != null ? new Rates.fromJson(json['rates']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this._success;
    data['timestamp'] = this._timestamp;
    data['base'] = this._base;
    data['date'] = this._date;
    if (this._rates != null) {
      data['rates'] = this._rates.toJson();
    }
    return data;
  }
}

class Rates {
  double _aED;
  double _aFN;
  double _aLL;
  double _aMD;
  double _aNG;
  double _aOA;
  double _aRS;
  double _aUD;
  double _aWG;
  double _aZN;
  double _bAM;
  double _bBD;
  double _bDT;
  double _bGN;
  double _bHD;
  double _bIF;
  double _bMD;
  double _bND;
  double _bOB;
  double _bRL;
  double _bSD;
  double _bTC;
  double _bTN;
  double _bWP;
  double _bYN;
  double _bYR;
  double _bZD;
  double _cAD;
  double _cDF;
  double _cHF;
  double _cLF;
  double _cLP;
  double _cNY;
  double _cOP;
  double _cRC;
  double _cUC;
  double _cUP;
  double _cVE;
  double _cZK;
  double _dJF;
  double _dKK;
  double _dOP;
  double _dZD;
  double _eGP;
  double _eRN;
  double _eTB;
  int _eUR;
  double _fJD;
  double _fKP;
  double _gBP;
  double _gEL;
  double _gGP;
  double _gHS;
  double _gIP;
  double _gMD;
  double _gNF;
  double _gTQ;
  double _gYD;
  double _hKD;
  double _hNL;
  double _hRK;
  double _hTG;
  double _hUF;
  double _iDR;
  double _iLS;
  double _iMP;
  double _iNR;
  double _iQD;
  double _iRR;
  double _iSK;
  double _jEP;
  double _jMD;
  double _jOD;
  double _jPY;
  double _kES;
  double _kGS;
  double _kHR;
  double _kMF;
  double _kPW;
  double _kRW;
  double _kWD;
  double _kYD;
  double _kZT;
  double _lAK;
  double _lBP;
  double _lKR;
  double _lRD;
  double _lSL;
  double _lTL;
  double _lVL;
  double _lYD;
  double _mAD;
  double _mDL;
  double _mGA;
  double _mKD;
  double _mMK;
  double _mNT;
  double _mOP;
  double _mRO;
  double _mUR;
  double _mVR;
  double _mWK;
  double _mXN;
  double _mYR;
  double _mZN;
  double _nAD;
  double _nGN;
  double _nIO;
  double _nOK;
  double _nPR;
  double _nZD;
  double _oMR;
  double _pAB;
  double _pEN;
  double _pGK;
  double _pHP;
  double _pKR;
  double _pLN;
  double _pYG;
  double _qAR;
  double _rON;
  double _rSD;
  double _rUB;
  double _rWF;
  double _sAR;
  double _sBD;
  double _sCR;
  double _sDG;
  double _sEK;
  double _sGD;
  double _sHP;
  double _sLL;
  double _sOS;
  double _sRD;
  double _sTD;
  double _sVC;
  double _sYP;
  double _sZL;
  double _tHB;
  double _tJS;
  double _tMT;
  double _tND;
  double _tOP;
  double _tRY;
  double _tTD;
  double _tWD;
  double _tZS;
  double _uAH;
  double _uGX;
  double _uSD;
  double _uYU;
  double _uZS;
  double _vEF;
  double _vND;
  double _vUV;
  double _wST;
  double _xAF;
  double _xAG;
  double _xAU;
  double _xCD;
  double _xDR;
  double _xOF;
  double _xPF;
  double _yER;
  double _zAR;
  double _zMK;
  double _zMW;
  double _zWL;

  Rates(
      {double aED,
        double aFN,
        double aLL,
        double aMD,
        double aNG,
        double aOA,
        double aRS,
        double aUD,
        double aWG,
        double aZN,
        double bAM,
        double bBD,
        double bDT,
        double bGN,
        double bHD,
        double bIF,
        double bMD,
        double bND,
        double bOB,
        double bRL,
        double bSD,
        double bTC,
        double bTN,
        double bWP,
        double bYN,
        double bYR,
        double bZD,
        double cAD,
        double cDF,
        double cHF,
        double cLF,
        double cLP,
        double cNY,
        double cOP,
        double cRC,
        double cUC,
        double cUP,
        double cVE,
        double cZK,
        double dJF,
        double dKK,
        double dOP,
        double dZD,
        double eGP,
        double eRN,
        double eTB,
        int eUR,
        double fJD,
        double fKP,
        double gBP,
        double gEL,
        double gGP,
        double gHS,
        double gIP,
        double gMD,
        double gNF,
        double gTQ,
        double gYD,
        double hKD,
        double hNL,
        double hRK,
        double hTG,
        double hUF,
        double iDR,
        double iLS,
        double iMP,
        double iNR,
        double iQD,
        double iRR,
        double iSK,
        double jEP,
        double jMD,
        double jOD,
        double jPY,
        double kES,
        double kGS,
        double kHR,
        double kMF,
        double kPW,
        double kRW,
        double kWD,
        double kYD,
        double kZT,
        double lAK,
        double lBP,
        double lKR,
        double lRD,
        double lSL,
        double lTL,
        double lVL,
        double lYD,
        double mAD,
        double mDL,
        double mGA,
        double mKD,
        double mMK,
        double mNT,
        double mOP,
        double mRO,
        double mUR,
        double mVR,
        double mWK,
        double mXN,
        double mYR,
        double mZN,
        double nAD,
        double nGN,
        double nIO,
        double nOK,
        double nPR,
        double nZD,
        double oMR,
        double pAB,
        double pEN,
        double pGK,
        double pHP,
        double pKR,
        double pLN,
        double pYG,
        double qAR,
        double rON,
        double rSD,
        double rUB,
        double rWF,
        double sAR,
        double sBD,
        double sCR,
        double sDG,
        double sEK,
        double sGD,
        double sHP,
        double sLL,
        double sOS,
        double sRD,
        double sTD,
        double sVC,
        double sYP,
        double sZL,
        double tHB,
        double tJS,
        double tMT,
        double tND,
        double tOP,
        double tRY,
        double tTD,
        double tWD,
        double tZS,
        double uAH,
        double uGX,
        double uSD,
        double uYU,
        double uZS,
        double vEF,
        double vND,
        double vUV,
        double wST,
        double xAF,
        double xAG,
        double xAU,
        double xCD,
        double xDR,
        double xOF,
        double xPF,
        double yER,
        double zAR,
        double zMK,
        double zMW,
        double zWL}) {
    this._aED = aED;
    this._aFN = aFN;
    this._aLL = aLL;
    this._aMD = aMD;
    this._aNG = aNG;
    this._aOA = aOA;
    this._aRS = aRS;
    this._aUD = aUD;
    this._aWG = aWG;
    this._aZN = aZN;
    this._bAM = bAM;
    this._bBD = bBD;
    this._bDT = bDT;
    this._bGN = bGN;
    this._bHD = bHD;
    this._bIF = bIF;
    this._bMD = bMD;
    this._bND = bND;
    this._bOB = bOB;
    this._bRL = bRL;
    this._bSD = bSD;
    this._bTC = bTC;
    this._bTN = bTN;
    this._bWP = bWP;
    this._bYN = bYN;
    this._bYR = bYR;
    this._bZD = bZD;
    this._cAD = cAD;
    this._cDF = cDF;
    this._cHF = cHF;
    this._cLF = cLF;
    this._cLP = cLP;
    this._cNY = cNY;
    this._cOP = cOP;
    this._cRC = cRC;
    this._cUC = cUC;
    this._cUP = cUP;
    this._cVE = cVE;
    this._cZK = cZK;
    this._dJF = dJF;
    this._dKK = dKK;
    this._dOP = dOP;
    this._dZD = dZD;
    this._eGP = eGP;
    this._eRN = eRN;
    this._eTB = eTB;
    this._eUR = eUR;
    this._fJD = fJD;
    this._fKP = fKP;
    this._gBP = gBP;
    this._gEL = gEL;
    this._gGP = gGP;
    this._gHS = gHS;
    this._gIP = gIP;
    this._gMD = gMD;
    this._gNF = gNF;
    this._gTQ = gTQ;
    this._gYD = gYD;
    this._hKD = hKD;
    this._hNL = hNL;
    this._hRK = hRK;
    this._hTG = hTG;
    this._hUF = hUF;
    this._iDR = iDR;
    this._iLS = iLS;
    this._iMP = iMP;
    this._iNR = iNR;
    this._iQD = iQD;
    this._iRR = iRR;
    this._iSK = iSK;
    this._jEP = jEP;
    this._jMD = jMD;
    this._jOD = jOD;
    this._jPY = jPY;
    this._kES = kES;
    this._kGS = kGS;
    this._kHR = kHR;
    this._kMF = kMF;
    this._kPW = kPW;
    this._kRW = kRW;
    this._kWD = kWD;
    this._kYD = kYD;
    this._kZT = kZT;
    this._lAK = lAK;
    this._lBP = lBP;
    this._lKR = lKR;
    this._lRD = lRD;
    this._lSL = lSL;
    this._lTL = lTL;
    this._lVL = lVL;
    this._lYD = lYD;
    this._mAD = mAD;
    this._mDL = mDL;
    this._mGA = mGA;
    this._mKD = mKD;
    this._mMK = mMK;
    this._mNT = mNT;
    this._mOP = mOP;
    this._mRO = mRO;
    this._mUR = mUR;
    this._mVR = mVR;
    this._mWK = mWK;
    this._mXN = mXN;
    this._mYR = mYR;
    this._mZN = mZN;
    this._nAD = nAD;
    this._nGN = nGN;
    this._nIO = nIO;
    this._nOK = nOK;
    this._nPR = nPR;
    this._nZD = nZD;
    this._oMR = oMR;
    this._pAB = pAB;
    this._pEN = pEN;
    this._pGK = pGK;
    this._pHP = pHP;
    this._pKR = pKR;
    this._pLN = pLN;
    this._pYG = pYG;
    this._qAR = qAR;
    this._rON = rON;
    this._rSD = rSD;
    this._rUB = rUB;
    this._rWF = rWF;
    this._sAR = sAR;
    this._sBD = sBD;
    this._sCR = sCR;
    this._sDG = sDG;
    this._sEK = sEK;
    this._sGD = sGD;
    this._sHP = sHP;
    this._sLL = sLL;
    this._sOS = sOS;
    this._sRD = sRD;
    this._sTD = sTD;
    this._sVC = sVC;
    this._sYP = sYP;
    this._sZL = sZL;
    this._tHB = tHB;
    this._tJS = tJS;
    this._tMT = tMT;
    this._tND = tND;
    this._tOP = tOP;
    this._tRY = tRY;
    this._tTD = tTD;
    this._tWD = tWD;
    this._tZS = tZS;
    this._uAH = uAH;
    this._uGX = uGX;
    this._uSD = uSD;
    this._uYU = uYU;
    this._uZS = uZS;
    this._vEF = vEF;
    this._vND = vND;
    this._vUV = vUV;
    this._wST = wST;
    this._xAF = xAF;
    this._xAG = xAG;
    this._xAU = xAU;
    this._xCD = xCD;
    this._xDR = xDR;
    this._xOF = xOF;
    this._xPF = xPF;
    this._yER = yER;
    this._zAR = zAR;
    this._zMK = zMK;
    this._zMW = zMW;
    this._zWL = zWL;
  }

  double get aED => _aED;
  set aED(double aED) => _aED = aED;
  double get aFN => _aFN;
  set aFN(double aFN) => _aFN = aFN;
  double get aLL => _aLL;
  set aLL(double aLL) => _aLL = aLL;
  double get aMD => _aMD;
  set aMD(double aMD) => _aMD = aMD;
  double get aNG => _aNG;
  set aNG(double aNG) => _aNG = aNG;
  double get aOA => _aOA;
  set aOA(double aOA) => _aOA = aOA;
  double get aRS => _aRS;
  set aRS(double aRS) => _aRS = aRS;
  double get aUD => _aUD;
  set aUD(double aUD) => _aUD = aUD;
  double get aWG => _aWG;
  set aWG(double aWG) => _aWG = aWG;
  double get aZN => _aZN;
  set aZN(double aZN) => _aZN = aZN;
  double get bAM => _bAM;
  set bAM(double bAM) => _bAM = bAM;
  double get bBD => _bBD;
  set bBD(double bBD) => _bBD = bBD;
  double get bDT => _bDT;
  set bDT(double bDT) => _bDT = bDT;
  double get bGN => _bGN;
  set bGN(double bGN) => _bGN = bGN;
  double get bHD => _bHD;
  set bHD(double bHD) => _bHD = bHD;
  double get bIF => _bIF;
  set bIF(double bIF) => _bIF = bIF;
  double get bMD => _bMD;
  set bMD(double bMD) => _bMD = bMD;
  double get bND => _bND;
  set bND(double bND) => _bND = bND;
  double get bOB => _bOB;
  set bOB(double bOB) => _bOB = bOB;
  double get bRL => _bRL;
  set bRL(double bRL) => _bRL = bRL;
  double get bSD => _bSD;
  set bSD(double bSD) => _bSD = bSD;
  double get bTC => _bTC;
  set bTC(double bTC) => _bTC = bTC;
  double get bTN => _bTN;
  set bTN(double bTN) => _bTN = bTN;
  double get bWP => _bWP;
  set bWP(double bWP) => _bWP = bWP;
  double get bYN => _bYN;
  set bYN(double bYN) => _bYN = bYN;
  double get bYR => _bYR;
  set bYR(double bYR) => _bYR = bYR;
  double get bZD => _bZD;
  set bZD(double bZD) => _bZD = bZD;
  double get cAD => _cAD;
  set cAD(double cAD) => _cAD = cAD;
  double get cDF => _cDF;
  set cDF(double cDF) => _cDF = cDF;
  double get cHF => _cHF;
  set cHF(double cHF) => _cHF = cHF;
  double get cLF => _cLF;
  set cLF(double cLF) => _cLF = cLF;
  double get cLP => _cLP;
  set cLP(double cLP) => _cLP = cLP;
  double get cNY => _cNY;
  set cNY(double cNY) => _cNY = cNY;
  double get cOP => _cOP;
  set cOP(double cOP) => _cOP = cOP;
  double get cRC => _cRC;
  set cRC(double cRC) => _cRC = cRC;
  double get cUC => _cUC;
  set cUC(double cUC) => _cUC = cUC;
  double get cUP => _cUP;
  set cUP(double cUP) => _cUP = cUP;
  double get cVE => _cVE;
  set cVE(double cVE) => _cVE = cVE;
  double get cZK => _cZK;
  set cZK(double cZK) => _cZK = cZK;
  double get dJF => _dJF;
  set dJF(double dJF) => _dJF = dJF;
  double get dKK => _dKK;
  set dKK(double dKK) => _dKK = dKK;
  double get dOP => _dOP;
  set dOP(double dOP) => _dOP = dOP;
  double get dZD => _dZD;
  set dZD(double dZD) => _dZD = dZD;
  double get eGP => _eGP;
  set eGP(double eGP) => _eGP = eGP;
  double get eRN => _eRN;
  set eRN(double eRN) => _eRN = eRN;
  double get eTB => _eTB;
  set eTB(double eTB) => _eTB = eTB;
  int get eUR => _eUR;
  set eUR(int eUR) => _eUR = eUR;
  double get fJD => _fJD;
  set fJD(double fJD) => _fJD = fJD;
  double get fKP => _fKP;
  set fKP(double fKP) => _fKP = fKP;
  double get gBP => _gBP;
  set gBP(double gBP) => _gBP = gBP;
  double get gEL => _gEL;
  set gEL(double gEL) => _gEL = gEL;
  double get gGP => _gGP;
  set gGP(double gGP) => _gGP = gGP;
  double get gHS => _gHS;
  set gHS(double gHS) => _gHS = gHS;
  double get gIP => _gIP;
  set gIP(double gIP) => _gIP = gIP;
  double get gMD => _gMD;
  set gMD(double gMD) => _gMD = gMD;
  double get gNF => _gNF;
  set gNF(double gNF) => _gNF = gNF;
  double get gTQ => _gTQ;
  set gTQ(double gTQ) => _gTQ = gTQ;
  double get gYD => _gYD;
  set gYD(double gYD) => _gYD = gYD;
  double get hKD => _hKD;
  set hKD(double hKD) => _hKD = hKD;
  double get hNL => _hNL;
  set hNL(double hNL) => _hNL = hNL;
  double get hRK => _hRK;
  set hRK(double hRK) => _hRK = hRK;
  double get hTG => _hTG;
  set hTG(double hTG) => _hTG = hTG;
  double get hUF => _hUF;
  set hUF(double hUF) => _hUF = hUF;
  double get iDR => _iDR;
  set iDR(double iDR) => _iDR = iDR;
  double get iLS => _iLS;
  set iLS(double iLS) => _iLS = iLS;
  double get iMP => _iMP;
  set iMP(double iMP) => _iMP = iMP;
  double get iNR => _iNR;
  set iNR(double iNR) => _iNR = iNR;
  double get iQD => _iQD;
  set iQD(double iQD) => _iQD = iQD;
  double get iRR => _iRR;
  set iRR(double iRR) => _iRR = iRR;
  double get iSK => _iSK;
  set iSK(double iSK) => _iSK = iSK;
  double get jEP => _jEP;
  set jEP(double jEP) => _jEP = jEP;
  double get jMD => _jMD;
  set jMD(double jMD) => _jMD = jMD;
  double get jOD => _jOD;
  set jOD(double jOD) => _jOD = jOD;
  double get jPY => _jPY;
  set jPY(double jPY) => _jPY = jPY;
  double get kES => _kES;
  set kES(double kES) => _kES = kES;
  double get kGS => _kGS;
  set kGS(double kGS) => _kGS = kGS;
  double get kHR => _kHR;
  set kHR(double kHR) => _kHR = kHR;
  double get kMF => _kMF;
  set kMF(double kMF) => _kMF = kMF;
  double get kPW => _kPW;
  set kPW(double kPW) => _kPW = kPW;
  double get kRW => _kRW;
  set kRW(double kRW) => _kRW = kRW;
  double get kWD => _kWD;
  set kWD(double kWD) => _kWD = kWD;
  double get kYD => _kYD;
  set kYD(double kYD) => _kYD = kYD;
  double get kZT => _kZT;
  set kZT(double kZT) => _kZT = kZT;
  double get lAK => _lAK;
  set lAK(double lAK) => _lAK = lAK;
  double get lBP => _lBP;
  set lBP(double lBP) => _lBP = lBP;
  double get lKR => _lKR;
  set lKR(double lKR) => _lKR = lKR;
  double get lRD => _lRD;
  set lRD(double lRD) => _lRD = lRD;
  double get lSL => _lSL;
  set lSL(double lSL) => _lSL = lSL;
  double get lTL => _lTL;
  set lTL(double lTL) => _lTL = lTL;
  double get lVL => _lVL;
  set lVL(double lVL) => _lVL = lVL;
  double get lYD => _lYD;
  set lYD(double lYD) => _lYD = lYD;
  double get mAD => _mAD;
  set mAD(double mAD) => _mAD = mAD;
  double get mDL => _mDL;
  set mDL(double mDL) => _mDL = mDL;
  double get mGA => _mGA;
  set mGA(double mGA) => _mGA = mGA;
  double get mKD => _mKD;
  set mKD(double mKD) => _mKD = mKD;
  double get mMK => _mMK;
  set mMK(double mMK) => _mMK = mMK;
  double get mNT => _mNT;
  set mNT(double mNT) => _mNT = mNT;
  double get mOP => _mOP;
  set mOP(double mOP) => _mOP = mOP;
  double get mRO => _mRO;
  set mRO(double mRO) => _mRO = mRO;
  double get mUR => _mUR;
  set mUR(double mUR) => _mUR = mUR;
  double get mVR => _mVR;
  set mVR(double mVR) => _mVR = mVR;
  double get mWK => _mWK;
  set mWK(double mWK) => _mWK = mWK;
  double get mXN => _mXN;
  set mXN(double mXN) => _mXN = mXN;
  double get mYR => _mYR;
  set mYR(double mYR) => _mYR = mYR;
  double get mZN => _mZN;
  set mZN(double mZN) => _mZN = mZN;
  double get nAD => _nAD;
  set nAD(double nAD) => _nAD = nAD;
  double get nGN => _nGN;
  set nGN(double nGN) => _nGN = nGN;
  double get nIO => _nIO;
  set nIO(double nIO) => _nIO = nIO;
  double get nOK => _nOK;
  set nOK(double nOK) => _nOK = nOK;
  double get nPR => _nPR;
  set nPR(double nPR) => _nPR = nPR;
  double get nZD => _nZD;
  set nZD(double nZD) => _nZD = nZD;
  double get oMR => _oMR;
  set oMR(double oMR) => _oMR = oMR;
  double get pAB => _pAB;
  set pAB(double pAB) => _pAB = pAB;
  double get pEN => _pEN;
  set pEN(double pEN) => _pEN = pEN;
  double get pGK => _pGK;
  set pGK(double pGK) => _pGK = pGK;
  double get pHP => _pHP;
  set pHP(double pHP) => _pHP = pHP;
  double get pKR => _pKR;
  set pKR(double pKR) => _pKR = pKR;
  double get pLN => _pLN;
  set pLN(double pLN) => _pLN = pLN;
  double get pYG => _pYG;
  set pYG(double pYG) => _pYG = pYG;
  double get qAR => _qAR;
  set qAR(double qAR) => _qAR = qAR;
  double get rON => _rON;
  set rON(double rON) => _rON = rON;
  double get rSD => _rSD;
  set rSD(double rSD) => _rSD = rSD;
  double get rUB => _rUB;
  set rUB(double rUB) => _rUB = rUB;
  double get rWF => _rWF;
  set rWF(double rWF) => _rWF = rWF;
  double get sAR => _sAR;
  set sAR(double sAR) => _sAR = sAR;
  double get sBD => _sBD;
  set sBD(double sBD) => _sBD = sBD;
  double get sCR => _sCR;
  set sCR(double sCR) => _sCR = sCR;
  double get sDG => _sDG;
  set sDG(double sDG) => _sDG = sDG;
  double get sEK => _sEK;
  set sEK(double sEK) => _sEK = sEK;
  double get sGD => _sGD;
  set sGD(double sGD) => _sGD = sGD;
  double get sHP => _sHP;
  set sHP(double sHP) => _sHP = sHP;
  double get sLL => _sLL;
  set sLL(double sLL) => _sLL = sLL;
  double get sOS => _sOS;
  set sOS(double sOS) => _sOS = sOS;
  double get sRD => _sRD;
  set sRD(double sRD) => _sRD = sRD;
  double get sTD => _sTD;
  set sTD(double sTD) => _sTD = sTD;
  double get sVC => _sVC;
  set sVC(double sVC) => _sVC = sVC;
  double get sYP => _sYP;
  set sYP(double sYP) => _sYP = sYP;
  double get sZL => _sZL;
  set sZL(double sZL) => _sZL = sZL;
  double get tHB => _tHB;
  set tHB(double tHB) => _tHB = tHB;
  double get tJS => _tJS;
  set tJS(double tJS) => _tJS = tJS;
  double get tMT => _tMT;
  set tMT(double tMT) => _tMT = tMT;
  double get tND => _tND;
  set tND(double tND) => _tND = tND;
  double get tOP => _tOP;
  set tOP(double tOP) => _tOP = tOP;
  double get tRY => _tRY;
  set tRY(double tRY) => _tRY = tRY;
  double get tTD => _tTD;
  set tTD(double tTD) => _tTD = tTD;
  double get tWD => _tWD;
  set tWD(double tWD) => _tWD = tWD;
  double get tZS => _tZS;
  set tZS(double tZS) => _tZS = tZS;
  double get uAH => _uAH;
  set uAH(double uAH) => _uAH = uAH;
  double get uGX => _uGX;
  set uGX(double uGX) => _uGX = uGX;
  double get uSD => _uSD;
  set uSD(double uSD) => _uSD = uSD;
  double get uYU => _uYU;
  set uYU(double uYU) => _uYU = uYU;
  double get uZS => _uZS;
  set uZS(double uZS) => _uZS = uZS;
  double get vEF => _vEF;
  set vEF(double vEF) => _vEF = vEF;
  double get vND => _vND;
  set vND(double vND) => _vND = vND;
  double get vUV => _vUV;
  set vUV(double vUV) => _vUV = vUV;
  double get wST => _wST;
  set wST(double wST) => _wST = wST;
  double get xAF => _xAF;
  set xAF(double xAF) => _xAF = xAF;
  double get xAG => _xAG;
  set xAG(double xAG) => _xAG = xAG;
  double get xAU => _xAU;
  set xAU(double xAU) => _xAU = xAU;
  double get xCD => _xCD;
  set xCD(double xCD) => _xCD = xCD;
  double get xDR => _xDR;
  set xDR(double xDR) => _xDR = xDR;
  double get xOF => _xOF;
  set xOF(double xOF) => _xOF = xOF;
  double get xPF => _xPF;
  set xPF(double xPF) => _xPF = xPF;
  double get yER => _yER;
  set yER(double yER) => _yER = yER;
  double get zAR => _zAR;
  set zAR(double zAR) => _zAR = zAR;
  double get zMK => _zMK;
  set zMK(double zMK) => _zMK = zMK;
  double get zMW => _zMW;
  set zMW(double zMW) => _zMW = zMW;
  double get zWL => _zWL;
  set zWL(double zWL) => _zWL = zWL;

  Rates.fromJson(Map<String, dynamic> json) {
    _aED = json['AED'];
    _aFN = json['AFN'];
    _aLL = json['ALL'];
    _aMD = json['AMD'];
    _aNG = json['ANG'];
    _aOA = json['AOA'];
    _aRS = json['ARS'];
    _aUD = json['AUD'];
    _aWG = json['AWG'];
    _aZN = json['AZN'];
    _bAM = json['BAM'];
    _bBD = json['BBD'];
    _bDT = json['BDT'];
    _bGN = json['BGN'];
    _bHD = json['BHD'];
    _bIF = json['BIF'];
    _bMD = json['BMD'];
    _bND = json['BND'];
    _bOB = json['BOB'];
    _bRL = json['BRL'];
    _bSD = json['BSD'];
    _bTC = json['BTC'];
    _bTN = json['BTN'];
    _bWP = json['BWP'];
    _bYN = json['BYN'];
    _bYR = json['BYR'];
    _bZD = json['BZD'];
    _cAD = json['CAD'];
    _cDF = json['CDF'];
    _cHF = json['CHF'];
    _cLF = json['CLF'];
    _cLP = json['CLP'];
    _cNY = json['CNY'];
    _cOP = json['COP'];
    _cRC = json['CRC'];
    _cUC = json['CUC'];
    _cUP = json['CUP'];
    _cVE = json['CVE'];
    _cZK = json['CZK'];
    _dJF = json['DJF'];
    _dKK = json['DKK'];
    _dOP = json['DOP'];
    _dZD = json['DZD'];
    _eGP = json['EGP'];
    _eRN = json['ERN'];
    _eTB = json['ETB'];
    _eUR = json['EUR'];
    _fJD = json['FJD'];
    _fKP = json['FKP'];
    _gBP = json['GBP'];
    _gEL = json['GEL'];
    _gGP = json['GGP'];
    _gHS = json['GHS'];
    _gIP = json['GIP'];
    _gMD = json['GMD'];
    _gNF = json['GNF'];
    _gTQ = json['GTQ'];
    _gYD = json['GYD'];
    _hKD = json['HKD'];
    _hNL = json['HNL'];
    _hRK = json['HRK'];
    _hTG = json['HTG'];
    _hUF = json['HUF'];
    _iDR = json['IDR'];
    _iLS = json['ILS'];
    _iMP = json['IMP'];
    _iNR = json['INR'];
    _iQD = json['IQD'];
    _iRR = json['IRR'];
    _iSK = json['ISK'];
    _jEP = json['JEP'];
    _jMD = json['JMD'];
    _jOD = json['JOD'];
    _jPY = json['JPY'];
    _kES = json['KES'];
    _kGS = json['KGS'];
    _kHR = json['KHR'];
    _kMF = json['KMF'];
    _kPW = json['KPW'];
    _kRW = json['KRW'];
    _kWD = json['KWD'];
    _kYD = json['KYD'];
    _kZT = json['KZT'];
    _lAK = json['LAK'];
    _lBP = json['LBP'];
    _lKR = json['LKR'];
    _lRD = json['LRD'];
    _lSL = json['LSL'];
    _lTL = json['LTL'];
    _lVL = json['LVL'];
    _lYD = json['LYD'];
    _mAD = json['MAD'];
    _mDL = json['MDL'];
    _mGA = json['MGA'];
    _mKD = json['MKD'];
    _mMK = json['MMK'];
    _mNT = json['MNT'];
    _mOP = json['MOP'];
    _mRO = json['MRO'];
    _mUR = json['MUR'];
    _mVR = json['MVR'];
    _mWK = json['MWK'];
    _mXN = json['MXN'];
    _mYR = json['MYR'];
    _mZN = json['MZN'];
    _nAD = json['NAD'];
    _nGN = json['NGN'];
    _nIO = json['NIO'];
    _nOK = json['NOK'];
    _nPR = json['NPR'];
    _nZD = json['NZD'];
    _oMR = json['OMR'];
    _pAB = json['PAB'];
    _pEN = json['PEN'];
    _pGK = json['PGK'];
    _pHP = json['PHP'];
    _pKR = json['PKR'];
    _pLN = json['PLN'];
    _pYG = json['PYG'];
    _qAR = json['QAR'];
    _rON = json['RON'];
    _rSD = json['RSD'];
    _rUB = json['RUB'];
    _rWF = json['RWF'];
    _sAR = json['SAR'];
    _sBD = json['SBD'];
    _sCR = json['SCR'];
    _sDG = json['SDG'];
    _sEK = json['SEK'];
    _sGD = json['SGD'];
    _sHP = json['SHP'];
    _sLL = json['SLL'];
    _sOS = json['SOS'];
    _sRD = json['SRD'];
    _sTD = json['STD'];
    _sVC = json['SVC'];
    _sYP = json['SYP'];
    _sZL = json['SZL'];
    _tHB = json['THB'];
    _tJS = json['TJS'];
    _tMT = json['TMT'];
    _tND = json['TND'];
    _tOP = json['TOP'];
    _tRY = json['TRY'];
    _tTD = json['TTD'];
    _tWD = json['TWD'];
    _tZS = json['TZS'];
    _uAH = json['UAH'];
    _uGX = json['UGX'];
    _uSD = json['USD'];
    _uYU = json['UYU'];
    _uZS = json['UZS'];
    _vEF = json['VEF'];
    _vND = json['VND'];
    _vUV = json['VUV'];
    _wST = json['WST'];
    _xAF = json['XAF'];
    _xAG = json['XAG'];
    _xAU = json['XAU'];
    _xCD = json['XCD'];
    _xDR = json['XDR'];
    _xOF = json['XOF'];
    _xPF = json['XPF'];
    _yER = json['YER'];
    _zAR = json['ZAR'];
    _zMK = json['ZMK'];
    _zMW = json['ZMW'];
    _zWL = json['ZWL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['AED'] = this._aED;
    data['AFN'] = this._aFN;
    data['ALL'] = this._aLL;
    data['AMD'] = this._aMD;
    data['ANG'] = this._aNG;
    data['AOA'] = this._aOA;
    data['ARS'] = this._aRS;
    data['AUD'] = this._aUD;
    data['AWG'] = this._aWG;
    data['AZN'] = this._aZN;
    data['BAM'] = this._bAM;
    data['BBD'] = this._bBD;
    data['BDT'] = this._bDT;
    data['BGN'] = this._bGN;
    data['BHD'] = this._bHD;
    data['BIF'] = this._bIF;
    data['BMD'] = this._bMD;
    data['BND'] = this._bND;
    data['BOB'] = this._bOB;
    data['BRL'] = this._bRL;
    data['BSD'] = this._bSD;
    data['BTC'] = this._bTC;
    data['BTN'] = this._bTN;
    data['BWP'] = this._bWP;
    data['BYN'] = this._bYN;
    data['BYR'] = this._bYR;
    data['BZD'] = this._bZD;
    data['CAD'] = this._cAD;
    data['CDF'] = this._cDF;
    data['CHF'] = this._cHF;
    data['CLF'] = this._cLF;
    data['CLP'] = this._cLP;
    data['CNY'] = this._cNY;
    data['COP'] = this._cOP;
    data['CRC'] = this._cRC;
    data['CUC'] = this._cUC;
    data['CUP'] = this._cUP;
    data['CVE'] = this._cVE;
    data['CZK'] = this._cZK;
    data['DJF'] = this._dJF;
    data['DKK'] = this._dKK;
    data['DOP'] = this._dOP;
    data['DZD'] = this._dZD;
    data['EGP'] = this._eGP;
    data['ERN'] = this._eRN;
    data['ETB'] = this._eTB;
    data['EUR'] = this._eUR;
    data['FJD'] = this._fJD;
    data['FKP'] = this._fKP;
    data['GBP'] = this._gBP;
    data['GEL'] = this._gEL;
    data['GGP'] = this._gGP;
    data['GHS'] = this._gHS;
    data['GIP'] = this._gIP;
    data['GMD'] = this._gMD;
    data['GNF'] = this._gNF;
    data['GTQ'] = this._gTQ;
    data['GYD'] = this._gYD;
    data['HKD'] = this._hKD;
    data['HNL'] = this._hNL;
    data['HRK'] = this._hRK;
    data['HTG'] = this._hTG;
    data['HUF'] = this._hUF;
    data['IDR'] = this._iDR;
    data['ILS'] = this._iLS;
    data['IMP'] = this._iMP;
    data['INR'] = this._iNR;
    data['IQD'] = this._iQD;
    data['IRR'] = this._iRR;
    data['ISK'] = this._iSK;
    data['JEP'] = this._jEP;
    data['JMD'] = this._jMD;
    data['JOD'] = this._jOD;
    data['JPY'] = this._jPY;
    data['KES'] = this._kES;
    data['KGS'] = this._kGS;
    data['KHR'] = this._kHR;
    data['KMF'] = this._kMF;
    data['KPW'] = this._kPW;
    data['KRW'] = this._kRW;
    data['KWD'] = this._kWD;
    data['KYD'] = this._kYD;
    data['KZT'] = this._kZT;
    data['LAK'] = this._lAK;
    data['LBP'] = this._lBP;
    data['LKR'] = this._lKR;
    data['LRD'] = this._lRD;
    data['LSL'] = this._lSL;
    data['LTL'] = this._lTL;
    data['LVL'] = this._lVL;
    data['LYD'] = this._lYD;
    data['MAD'] = this._mAD;
    data['MDL'] = this._mDL;
    data['MGA'] = this._mGA;
    data['MKD'] = this._mKD;
    data['MMK'] = this._mMK;
    data['MNT'] = this._mNT;
    data['MOP'] = this._mOP;
    data['MRO'] = this._mRO;
    data['MUR'] = this._mUR;
    data['MVR'] = this._mVR;
    data['MWK'] = this._mWK;
    data['MXN'] = this._mXN;
    data['MYR'] = this._mYR;
    data['MZN'] = this._mZN;
    data['NAD'] = this._nAD;
    data['NGN'] = this._nGN;
    data['NIO'] = this._nIO;
    data['NOK'] = this._nOK;
    data['NPR'] = this._nPR;
    data['NZD'] = this._nZD;
    data['OMR'] = this._oMR;
    data['PAB'] = this._pAB;
    data['PEN'] = this._pEN;
    data['PGK'] = this._pGK;
    data['PHP'] = this._pHP;
    data['PKR'] = this._pKR;
    data['PLN'] = this._pLN;
    data['PYG'] = this._pYG;
    data['QAR'] = this._qAR;
    data['RON'] = this._rON;
    data['RSD'] = this._rSD;
    data['RUB'] = this._rUB;
    data['RWF'] = this._rWF;
    data['SAR'] = this._sAR;
    data['SBD'] = this._sBD;
    data['SCR'] = this._sCR;
    data['SDG'] = this._sDG;
    data['SEK'] = this._sEK;
    data['SGD'] = this._sGD;
    data['SHP'] = this._sHP;
    data['SLL'] = this._sLL;
    data['SOS'] = this._sOS;
    data['SRD'] = this._sRD;
    data['STD'] = this._sTD;
    data['SVC'] = this._sVC;
    data['SYP'] = this._sYP;
    data['SZL'] = this._sZL;
    data['THB'] = this._tHB;
    data['TJS'] = this._tJS;
    data['TMT'] = this._tMT;
    data['TND'] = this._tND;
    data['TOP'] = this._tOP;
    data['TRY'] = this._tRY;
    data['TTD'] = this._tTD;
    data['TWD'] = this._tWD;
    data['TZS'] = this._tZS;
    data['UAH'] = this._uAH;
    data['UGX'] = this._uGX;
    data['USD'] = this._uSD;
    data['UYU'] = this._uYU;
    data['UZS'] = this._uZS;
    data['VEF'] = this._vEF;
    data['VND'] = this._vND;
    data['VUV'] = this._vUV;
    data['WST'] = this._wST;
    data['XAF'] = this._xAF;
    data['XAG'] = this._xAG;
    data['XAU'] = this._xAU;
    data['XCD'] = this._xCD;
    data['XDR'] = this._xDR;
    data['XOF'] = this._xOF;
    data['XPF'] = this._xPF;
    data['YER'] = this._yER;
    data['ZAR'] = this._zAR;
    data['ZMK'] = this._zMK;
    data['ZMW'] = this._zMW;
    data['ZWL'] = this._zWL;
    return data;
  }
}
