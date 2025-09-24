
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/24/2025 13:07:03
-- Generated from EDMX file: C:\Users\opilane\source\repos\ABmodelWEB\ABmodelWEB\ABmodel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [opilaneMudel];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'opilaneSet'
CREATE TABLE [dbo].[opilaneSet] (
    [opilaneID] int IDENTITY(1,1) NOT NULL,
    [eesnimi] nvarchar(max)  NOT NULL,
    [perenimi] nvarchar(max)  NOT NULL,
    [synniaeg] datetime  NOT NULL,
    [ryhm_ryhmID] int  NOT NULL
);
GO

-- Creating table 'ryhmSet'
CREATE TABLE [dbo].[ryhmSet] (
    [ryhmID] int IDENTITY(1,1) NOT NULL,
    [ryhmNimi] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [opilaneID] in table 'opilaneSet'
ALTER TABLE [dbo].[opilaneSet]
ADD CONSTRAINT [PK_opilaneSet]
    PRIMARY KEY CLUSTERED ([opilaneID] ASC);
GO

-- Creating primary key on [ryhmID] in table 'ryhmSet'
ALTER TABLE [dbo].[ryhmSet]
ADD CONSTRAINT [PK_ryhmSet]
    PRIMARY KEY CLUSTERED ([ryhmID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ryhm_ryhmID] in table 'opilaneSet'
ALTER TABLE [dbo].[opilaneSet]
ADD CONSTRAINT [FK_ryhmopilane]
    FOREIGN KEY ([ryhm_ryhmID])
    REFERENCES [dbo].[ryhmSet]
        ([ryhmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ryhmopilane'
CREATE INDEX [IX_FK_ryhmopilane]
ON [dbo].[opilaneSet]
    ([ryhm_ryhmID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------