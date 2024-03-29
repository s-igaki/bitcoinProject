CREATE DATABASE `Bitcoin`;

CREATE TABLE Bitcoin.TX (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TX_ID` varchar(255) DEFAULT NULL,
  `TIME` varchar(255) DEFAULT NULL,
  `SRC_IP` varchar(255) DEFAULT NULL,
  `DST_IP` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


CREATE TABLE Bitcoin.TX_ADDRESS (
  `TX_ADDRESS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TX_ID` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `IN_OUT_FLAG` int(11) DEFAULT NULL,
  PRIMARY KEY (`TX_ADDRESS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


CREATE  INDEX BITCOIN_TX_ID ON Bitcoin.TX (TX_ID);
CREATE  INDEX BITCOIN_TX_ADDRESS ON Bitcoin.TX_ADDRESS (ADDRESS);
