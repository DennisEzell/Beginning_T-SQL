--XML as a data type

--Create temp table
CREATE TABLE #CustomerList (CustomerInfo XML);

--Create XML typed variable
DECLARE @XMLInfo XML;

--Set the variable value to an xml document created using the FOR XML PATH 
SET @XMLInfo = 
(
	SELECT 
		CustomerID
		,LastName
		,FirstName
		,MiddleName
	FROM Person.Person p 
	JOIN Sales.Customer c ON p.BusinessEntityID = c.PersonID 
	WHERE c.CustomerID < 29500 and c.CustomerID > 29450
	FOR XML PATH
);

--Populate the temp table
INSERT INTO #CustomerList(CustomerInfo)
VALUES(@XMLInfo);

--View the data
SELECT CustomerInfo 
FROM #CustomerList;

DROP TABLE #CustomerList;

/******** NOTES *******************************************************************************************
--The output is so large that I had to increase the amount of memory allowable for XML 
	Tools --> Options --> Query Results --> SQL Server --> Results to Grid --> XML data: Unlimited

--Output
<row>
  <CustomerID>29475</CustomerID>
  <LastName>Ward</LastName>
  <FirstName>Jared</FirstName>
  <MiddleName>A</MiddleName>
</row>
<row>
  <CustomerID>29468</CustomerID>
  <LastName>Morris</LastName>
  <FirstName>Jacqueline</FirstName>
  <MiddleName>H</MiddleName>
</row>
<row>
  <CustomerID>29464</CustomerID>
  <LastName>Gao</LastName>
  <FirstName>Eugene</FirstName>
</row>
<row>
  <CustomerID>29463</CustomerID>
  <LastName>Gonzales</LastName>
  <FirstName>Lucas</FirstName>
</row>
<row>
  <CustomerID>29462</CustomerID>
  <LastName>Hernandez</LastName>
  <FirstName>Clinton</FirstName>
</row>
<row>
  <CustomerID>29461</CustomerID>
  <LastName>Xu</LastName>
  <FirstName>Colin</FirstName>
  <MiddleName>C</MiddleName>
</row>
<row>
  <CustomerID>29458</CustomerID>
  <LastName>Moreno</LastName>
  <FirstName>Danny</FirstName>
  <MiddleName>M</MiddleName>
</row>
<row>
  <CustomerID>29457</CustomerID>
  <LastName>Kapoor</LastName>
  <FirstName>Cynthia</FirstName>
</row>
<row>
  <CustomerID>29456</CustomerID>
  <LastName>She</LastName>
  <FirstName>Lindsay</FirstName>
</row>
<row>
  <CustomerID>29454</CustomerID>
  <LastName>Bradley</LastName>
  <FirstName>Victoria</FirstName>
</row>
<row>
  <CustomerID>29453</CustomerID>
  <LastName>Vazquez</LastName>
  <FirstName>Victor</FirstName>
  <MiddleName>R</MiddleName>
</row>
<row>
  <CustomerID>29476</CustomerID>
  <LastName>Bradley</LastName>
  <FirstName>Elizabeth</FirstName>
</row>
<row>
  <CustomerID>29472</CustomerID>
  <LastName>Sharma</LastName>
  <FirstName>Lacey</FirstName>
  <MiddleName>M</MiddleName>
</row>
<row>
  <CustomerID>29471</CustomerID>
  <LastName>Ortega</LastName>
  <FirstName>Dana</FirstName>
</row>
<row>
  <CustomerID>29470</CustomerID>
  <LastName>Roberts</LastName>
  <FirstName>Nathan</FirstName>
</row>
<row>
  <CustomerID>29469</CustomerID>
  <LastName>Saunders</LastName>
  <FirstName>Dominique</FirstName>
  <MiddleName>M</MiddleName>
</row>
<row>
  <CustomerID>29467</CustomerID>
  <LastName>Mehta</LastName>
  <FirstName>Monica</FirstName>
  <MiddleName>J</MiddleName>
</row>
<row>
  <CustomerID>29466</CustomerID>
  <LastName>Jimenez</LastName>
  <FirstName>Lance</FirstName>
</row>
<row>
  <CustomerID>29478</CustomerID>
  <LastName>Carlson</LastName>
  <FirstName>Darren</FirstName>
  <MiddleName>D</MiddleName>
</row>
<row>
  <CustomerID>29479</CustomerID>
  <LastName>Tang</LastName>
  <FirstName>Tommy</FirstName>
  <MiddleName>L</MiddleName>
</row>
<row>
  <CustomerID>29480</CustomerID>
  <LastName>Raji</LastName>
  <FirstName>Nina</FirstName>
  <MiddleName>W</MiddleName>
</row>
<row>
  <CustomerID>29460</CustomerID>
  <LastName>Chander</LastName>
  <FirstName>Andres</FirstName>
  <MiddleName>E</MiddleName>
</row>
<row>
  <CustomerID>29459</CustomerID>
  <LastName>Malhotra</LastName>
  <FirstName>Marco</FirstName>
  <MiddleName>L</MiddleName>
</row>
<row>
  <CustomerID>29482</CustomerID>
  <LastName>Zhang</LastName>
  <FirstName>Clayton</FirstName>
</row>
<row>
  <CustomerID>29483</CustomerID>
  <LastName>Navarro</LastName>
  <FirstName>J�sus</FirstName>
  <MiddleName>L</MiddleName>
</row>
<row>
  <CustomerID>29455</CustomerID>
  <LastName>Zeng</LastName>
  <FirstName>Dawn</FirstName>
  <MiddleName>D</MiddleName>
</row>
<row>
  <CustomerID>29452</CustomerID>
  <LastName>Romero</LastName>
  <FirstName>Meredith</FirstName>
  <MiddleName>J</MiddleName>
</row>
<row>
  <CustomerID>29474</CustomerID>
  <LastName>Raje</LastName>
  <FirstName>Jaime</FirstName>
  <MiddleName>B</MiddleName>
</row>
<row>
  <CustomerID>29477</CustomerID>
  <LastName>Ruiz</LastName>
  <FirstName>Neil</FirstName>
  <MiddleName>N</MiddleName>
</row>
<row>
  <CustomerID>29487</CustomerID>
  <LastName>Acevedo</LastName>
  <FirstName>Humberto</FirstName>
</row>
<row>
  <CustomerID>29465</CustomerID>
  <LastName>Gill</LastName>
  <FirstName>Roy</FirstName>
</row>
<row>
  <CustomerID>29484</CustomerID>
  <LastName>Achong</LastName>
  <FirstName>Gustavo</FirstName>
</row>
<row>
  <CustomerID>29485</CustomerID>
  <LastName>Abel</LastName>
  <FirstName>Catherine</FirstName>
  <MiddleName>R.</MiddleName>
</row>
<row>
  <CustomerID>29486</CustomerID>
  <LastName>Abercrombie</LastName>
  <FirstName>Kim</FirstName>
</row>
<row>
  <CustomerID>29473</CustomerID>
  <LastName>Subram</LastName>
  <FirstName>Carmen</FirstName>
  <MiddleName>J</MiddleName>
</row>
<row>
  <CustomerID>29488</CustomerID>
  <LastName>Ackerman</LastName>
  <FirstName>Pilar</FirstName>
</row>
<row>
  <CustomerID>29489</CustomerID>
  <LastName>Adams</LastName>
  <FirstName>Frances</FirstName>
  <MiddleName>B.</MiddleName>
</row>
<row>
  <CustomerID>29490</CustomerID>
  <LastName>Smith</LastName>
  <FirstName>Margaret</FirstName>
  <MiddleName>J.</MiddleName>
</row>
<row>
  <CustomerID>29491</CustomerID>
  <LastName>Adams</LastName>
  <FirstName>Carla</FirstName>
  <MiddleName>J.</MiddleName>
</row>
<row>
  <CustomerID>29492</CustomerID>
  <LastName>Adams</LastName>
  <FirstName>Jay</FirstName>
</row>
<row>
  <CustomerID>29493</CustomerID>
  <LastName>Adina</LastName>
  <FirstName>Ronald</FirstName>
  <MiddleName>L.</MiddleName>
</row>
<row>
  <CustomerID>29494</CustomerID>
  <LastName>Agcaoili</LastName>
  <FirstName>Samuel</FirstName>
  <MiddleName>N.</MiddleName>
</row>
<row>
  <CustomerID>29495</CustomerID>
  <LastName>Aguilar</LastName>
  <FirstName>James</FirstName>
  <MiddleName>T.</MiddleName>
</row>
<row>
  <CustomerID>29496</CustomerID>
  <LastName>Ahlering</LastName>
  <FirstName>Robert</FirstName>
  <MiddleName>E.</MiddleName>
</row>
<row>
  <CustomerID>29481</CustomerID>
  <LastName>Suri</LastName>
  <FirstName>Ivan</FirstName>
</row>
<row>
  <CustomerID>29497</CustomerID>
  <LastName>Ferrier</LastName>
  <FirstName>Fran�ois</FirstName>
</row>
<row>
  <CustomerID>29498</CustomerID>
  <LastName>Akers</LastName>
  <FirstName>Kim</FirstName>
</row>
<row>
  <CustomerID>29499</CustomerID>
  <LastName>Alberts</LastName>
  <FirstName>Amy</FirstName>
  <MiddleName>E.</MiddleName>
</row>
<row>
  <CustomerID>29451</CustomerID>
  <LastName>Lopez</LastName>
  <FirstName>Geoffrey</FirstName>
  <MiddleName>A</MiddleName>
</row>

**********************************************************************************************************/